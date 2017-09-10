.class public abstract Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainService;
.super Lcom/google/gdata/client/GoogleService;
.source "AppsForYourDomainService.java"


# static fields
.field public static final APPS_SERVICE:Ljava/lang/String; = "apps"

.field public static final DOMAIN_NAME:Ljava/lang/String; = "www.google.com"

.field public static final HTTPS_PROTOCOL:Ljava/lang/String; = "https"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "applicationName"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string v0, "https"

    const-string v1, "www.google.com"

    invoke-direct {p0, p1, v0, v1}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationName"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "domainName"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string v0, "apps"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/gdata/client/GoogleService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method


# virtual methods
.method public delete(Ljava/net/URL;)V
    .locals 2
    .param p1, "entryUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;,
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
        }
    .end annotation

    .prologue
    .line 188
    :try_start_0
    invoke-super {p0, p1}, Lcom/google/gdata/client/GoogleService;->delete(Ljava/net/URL;)V
    :try_end_0
    .catch Lcom/google/gdata/util/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    return-void

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "se":Lcom/google/gdata/util/ServiceException;
    invoke-static {v1}, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;->narrow(Lcom/google/gdata/util/ServiceException;)Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;

    move-result-object v0

    .line 193
    .local v0, "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    if-eqz v0, :cond_0

    .end local v0    # "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    :goto_0
    throw v0

    .restart local v0    # "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected getAllPages(Ljava/net/URL;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .param p1, "feedUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            "F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TF;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 296
    .local p2, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v1, "allEntries":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/client/appsforyourdomain/AppsForYourDomainService;->getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;

    move-result-object v2

    .line 300
    .local v2, "feed":Lcom/google/gdata/data/IFeed;
    invoke-interface {v2}, Lcom/google/gdata/data/IFeed;->getEntries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 301
    invoke-interface {v2}, Lcom/google/gdata/data/IFeed;->getNextLink()Lcom/google/gdata/data/ILink;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 p1, 0x0

    .line 303
    :goto_0
    if-nez p1, :cond_0

    .line 308
    return-object v1

    .line 301
    :cond_1
    new-instance p1, Ljava/net/URL;

    .end local p1    # "feedUrl":Ljava/net/URL;
    invoke-interface {v2}, Lcom/google/gdata/data/IFeed;->getNextLink()Lcom/google/gdata/data/ILink;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/gdata/data/ILink;->getHref()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gdata/util/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    .end local v2    # "feed":Lcom/google/gdata/data/IFeed;
    :catch_0
    move-exception v3

    .line 305
    .local v3, "se":Lcom/google/gdata/util/ServiceException;
    invoke-static {v3}, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;->narrow(Lcom/google/gdata/util/ServiceException;)Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;

    move-result-object v0

    .line 306
    .local v0, "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    if-eqz v0, :cond_2

    .end local v0    # "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    :goto_1
    throw v0

    .restart local v0    # "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    :cond_2
    move-object v0, v3

    goto :goto_1
.end method

.method public getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;
    .locals 3
    .param p1, "entryUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;,
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
        }
    .end annotation

    .prologue
    .line 118
    .local p2, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/google/gdata/client/GoogleService;->getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;
    :try_end_0
    .catch Lcom/google/gdata/util/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "se":Lcom/google/gdata/util/ServiceException;
    invoke-static {v1}, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;->narrow(Lcom/google/gdata/util/ServiceException;)Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;

    move-result-object v0

    .line 122
    .local v0, "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    if-eqz v0, :cond_0

    .end local v0    # "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    :goto_0
    throw v0

    .restart local v0    # "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getEntry(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IEntry;
    .locals 3
    .param p1, "entryUrl"    # Ljava/net/URL;
    .param p3, "ifModifiedSince"    # Lcom/google/gdata/data/DateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lcom/google/gdata/data/DateTime;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 229
    .local p2, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/google/gdata/client/GoogleService;->getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;
    :try_end_0
    .catch Lcom/google/gdata/util/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, "se":Lcom/google/gdata/util/ServiceException;
    invoke-static {v1}, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;->narrow(Lcom/google/gdata/util/ServiceException;)Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;

    move-result-object v0

    .line 233
    .local v0, "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    if-eqz v0, :cond_0

    .end local v0    # "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    :goto_0
    throw v0

    .restart local v0    # "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;
    .locals 3
    .param p1, "feedUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TF;>;)TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;,
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
        }
    .end annotation

    .prologue
    .line 137
    .local p2, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/google/gdata/client/GoogleService;->getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;
    :try_end_0
    .catch Lcom/google/gdata/util/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "se":Lcom/google/gdata/util/ServiceException;
    invoke-static {v1}, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;->narrow(Lcom/google/gdata/util/ServiceException;)Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;

    move-result-object v0

    .line 141
    .local v0, "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    if-eqz v0, :cond_0

    .end local v0    # "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    :goto_0
    throw v0

    .restart local v0    # "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getFeed(Ljava/net/URL;Ljava/lang/Class;Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/data/IFeed;
    .locals 3
    .param p1, "feedUrl"    # Ljava/net/URL;
    .param p3, "ifModifiedSince"    # Lcom/google/gdata/data/DateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TF;>;",
            "Lcom/google/gdata/data/DateTime;",
            ")TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 266
    .local p2, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/google/gdata/client/GoogleService;->getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;
    :try_end_0
    .catch Lcom/google/gdata/util/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 267
    :catch_0
    move-exception v1

    .line 268
    .local v1, "se":Lcom/google/gdata/util/ServiceException;
    invoke-static {v1}, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;->narrow(Lcom/google/gdata/util/ServiceException;)Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;

    move-result-object v0

    .line 270
    .local v0, "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    if-eqz v0, :cond_0

    .end local v0    # "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    :goto_0
    throw v0

    .restart local v0    # "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;
    .locals 3
    .param p1, "feedUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "TE;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;,
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
        }
    .end annotation

    .prologue
    .line 100
    .local p2, "entry":Lcom/google/gdata/data/IEntry;, "TE;"
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/google/gdata/client/GoogleService;->insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;
    :try_end_0
    .catch Lcom/google/gdata/util/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "se":Lcom/google/gdata/util/ServiceException;
    invoke-static {v1}, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;->narrow(Lcom/google/gdata/util/ServiceException;)Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;

    move-result-object v0

    .line 103
    .local v0, "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    if-eqz v0, :cond_0

    .end local v0    # "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    :goto_0
    throw v0

    .restart local v0    # "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public query(Lcom/google/gdata/client/Query;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;
    .locals 3
    .param p1, "query"    # Lcom/google/gdata/client/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/google/gdata/data/IFeed;",
            ">(",
            "Lcom/google/gdata/client/Query;",
            "Ljava/lang/Class",
            "<TF;>;)TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;,
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
        }
    .end annotation

    .prologue
    .line 156
    .local p2, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/google/gdata/client/GoogleService;->query(Lcom/google/gdata/client/Query;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;
    :try_end_0
    .catch Lcom/google/gdata/util/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "se":Lcom/google/gdata/util/ServiceException;
    invoke-static {v1}, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;->narrow(Lcom/google/gdata/util/ServiceException;)Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;

    move-result-object v0

    .line 160
    .local v0, "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    if-eqz v0, :cond_0

    .end local v0    # "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    :goto_0
    throw v0

    .restart local v0    # "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;
    .locals 3
    .param p1, "entryUrl"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/net/URL;",
            "TE;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;,
            Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
        }
    .end annotation

    .prologue
    .line 172
    .local p2, "entry":Lcom/google/gdata/data/IEntry;, "TE;"
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/google/gdata/client/GoogleService;->update(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;
    :try_end_0
    .catch Lcom/google/gdata/util/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "se":Lcom/google/gdata/util/ServiceException;
    invoke-static {v1}, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;->narrow(Lcom/google/gdata/util/ServiceException;)Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;

    move-result-object v0

    .line 176
    .local v0, "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    if-eqz v0, :cond_0

    .end local v0    # "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    :goto_0
    throw v0

    .restart local v0    # "ae":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
