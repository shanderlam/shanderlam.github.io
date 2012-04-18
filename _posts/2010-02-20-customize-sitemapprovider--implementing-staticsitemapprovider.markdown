---
layout: post
title: Customize SiteMapProvider - Implementing StaticSiteMapProvider
category: Programming
tags: [aspnet]
date: 2010-02-20 14:12:35.000000000 +08:00
---
在创建站点地图的时候，ASP.NET默认使用[XmlSiteMapProvider](http://msdn.microsoft.com/en-us/library/system.web.xmlsitemapprovider.aspx), 并使用web.sitemap文件作为数据源。如果我们想根据数据库中的数据来动态地生成站点地图，我们可以通过实现[StaticSiteMapProvider](http://msdn.microsoft.com/en-us/library/system.web.staticsitemapprovider.aspx)或者[SiteMapProvider](http://msdn.microsoft.com/en-us/library/system.web.sitemapprovider.aspx)抽象类来自定义一个SiteMapProvider。StaticSiteMapProvider继承于SiteMapProvider,并且是XmlSiteMapProvider的基类。如果只是更改站点地图的数据源，我们只需要实现StaticSiteMapProvider抽象类即可。

首先创建一个名为MySiteMapProvider的类继承StaticSiteMapProvider。然后为这个类增加以下修饰：

    [AspNetHostingPermission(System.Security.Permissions.SecurityAction.Demand, Level = AspNetHostingPermissionLevel.Minimal)]
    public class MySiteMapProvider : StaticSiteMapProvider

System.Security.Permissions.SecurityAction.Demand表示要求调用堆栈中的所有高级调用方都已被授予了当前权限对象所指定的权限，而Level = AspNetHostingPermissionLevel.Minimal则指明了许可级别为最小。

在MySiteMapProvider类中，为了能够自定义RootNode，需要声明一个私有的SiteMapNode类型变量rootNode用来保存根节点的值。除此之外，还需要重写RootNode属性使其与rootNode变量关联，代码如下：

    private SiteMapNode rootNode = null;
    
    // Return the root node of the current site map.
    public override SiteMapNode RootNode
    {
        get
        {
            SiteMapNode temp = null;
            temp = BuildSiteMap();
            return temp;
        }
    }

为了在执行Clear函数时能将rootNode变量清空，我们还需重写Clear函数，代码如下：

    // SiteMapProvider and StaticSiteMapProvider methods that this derived class must override.
    // Clean up any collections or other state that an instance of this may hold.
    protected override void Clear()
    {
        lock (this)
        {
            rootNode = null;
            base.Clear();
        }
    }

上述代码加lock块是为了防止调用函数时其他线程调用该资源，引发错误。

此外，StaticSiteMapProvider抽象类有两个必须实现的函数，[GetRootNodeCore](http://msdn.microsoft.com/en-us/library/system.web.sitemapprovider.getrootnodecore(v=VS.100).aspx)和[BuildSiteMap](http://msdn.microsoft.com/en-us/library/system.web.staticsitemapprovider.buildsitemap(v=VS.100).aspx)。其中GetRootNodeCore用于获取根节点，BuildSiteMap用于从持久性存储区加载站点地图信息，并在内存中构建它。以下是简单的实现代码：

    public override SiteMapNode BuildSiteMap()
    {
        // Since the SiteMap class is static, make sure that it is
        // not modified while the site map is built.
        lock (this)
        {
            // If there is no root node, then there is no site map.
            if (null == rootNode)
            {
                // Start with a clean slate
                Clear();
                rootNode = new SiteMapNode(this, "home", "/Home", "Home");
                SiteMapNode aboutNode = new SiteMapNode(this, "about", "/Home/About", "About");
                AddNode(aboutNode, rootNode);
                SiteMapNode designNode = new SiteMapNode(this, "design", "/Design", "Design");
                AddNode(designNode, rootNode);
                SiteMapNode artistNode = new SiteMapNode(this, "artist", "/Artist", "Artist");
                AddNode(artistNode, rootNode);
                SiteMapNode videoNode = new SiteMapNode(this, "video", "/Video", "Video");
                AddNode(videoNode, rootNode);
                SiteMapNode bookNode = new SiteMapNode(this, "book", "/Book", "Book");
                AddNode(bookNode, rootNode);
            }
            return rootNode;
        }
    }
    
    protected override SiteMapNode GetRootNodeCore()
    {
        return RootNode;
    }

上述代码中由于线程的安全性问题，因此要在BuildSiteMap方法中增加lock块，以确保在执行BuildSiteMap方法时，其他线程不能访问相应的资源。如果要使SiteMap中的节点数据来自数据库，则在BuildSiteMap方法中加入数据库访问逻辑即可。
