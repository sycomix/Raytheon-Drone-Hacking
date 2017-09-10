.class public Lcom/google/gdata/data/webmastertools/SitemapsEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "SitemapsEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/webmastertools/SitemapsEntry$UrlCount;,
        Lcom/google/gdata/data/webmastertools/SitemapsEntry$LastDownloaded;,
        Lcom/google/gdata/data/webmastertools/SitemapsEntry$SitemapStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/google/gdata/data/webmastertools/SitemapsEntry",
        "<TE;>;>",
        "Lcom/google/gdata/data/BaseEntry",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final SITEMAP_DOWNLOADED:Ljava/lang/String; = "sitemap-last-downloaded"

.field private static final SITEMAP_STATUS:Ljava/lang/String; = "sitemap-status"

.field private static final SITEMAP_URL_COUNT:Ljava/lang/String; = "sitemap-url-count"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    .local p0, "this":Lcom/google/gdata/data/webmastertools/SitemapsEntry;, "Lcom/google/gdata/data/webmastertools/SitemapsEntry<TE;>;"
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/google/gdata/data/webmastertools/SitemapsEntry;, "Lcom/google/gdata/data/webmastertools/SitemapsEntry<TE;>;"
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 50
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 58
    .local p0, "this":Lcom/google/gdata/data/webmastertools/SitemapsEntry;, "Lcom/google/gdata/data/webmastertools/SitemapsEntry<TE;>;"
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 60
    const-class v0, Lcom/google/gdata/data/webmastertools/SitemapsEntry;

    const-class v1, Lcom/google/gdata/data/webmastertools/SitemapsEntry$SitemapStatus;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 64
    const-class v0, Lcom/google/gdata/data/webmastertools/SitemapsEntry;

    const-class v1, Lcom/google/gdata/data/webmastertools/SitemapsEntry$LastDownloaded;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 68
    const-class v0, Lcom/google/gdata/data/webmastertools/SitemapsEntry;

    const-class v1, Lcom/google/gdata/data/webmastertools/SitemapsEntry$UrlCount;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->setAutoExtending(Z)V

    .line 73
    return-void
.end method

.method public getSitemapDownloadTime()Lcom/google/gdata/data/DateTime;
    .locals 2

    .prologue
    .line 119
    .local p0, "this":Lcom/google/gdata/data/webmastertools/SitemapsEntry;, "Lcom/google/gdata/data/webmastertools/SitemapsEntry<TE;>;"
    const-class v1, Lcom/google/gdata/data/webmastertools/SitemapsEntry$LastDownloaded;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/webmastertools/SitemapsEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitemapsEntry$LastDownloaded;

    .line 120
    .local v0, "time":Lcom/google/gdata/data/webmastertools/SitemapsEntry$LastDownloaded;
    if-nez v0, :cond_0

    .line 121
    const/4 v1, 0x0

    .line 124
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/webmastertools/SitemapsEntry$LastDownloaded;->getDateTime()Lcom/google/gdata/data/DateTime;

    move-result-object v1

    goto :goto_0
.end method

.method public getSitemapStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    .local p0, "this":Lcom/google/gdata/data/webmastertools/SitemapsEntry;, "Lcom/google/gdata/data/webmastertools/SitemapsEntry<TE;>;"
    const-class v1, Lcom/google/gdata/data/webmastertools/SitemapsEntry$SitemapStatus;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/webmastertools/SitemapsEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitemapsEntry$SitemapStatus;

    .line 95
    .local v0, "status":Lcom/google/gdata/data/webmastertools/SitemapsEntry$SitemapStatus;
    if-nez v0, :cond_0

    .line 96
    const/4 v1, 0x0

    .line 99
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/webmastertools/SitemapsEntry$SitemapStatus;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSitemapUrlCount()I
    .locals 2

    .prologue
    .line 144
    .local p0, "this":Lcom/google/gdata/data/webmastertools/SitemapsEntry;, "Lcom/google/gdata/data/webmastertools/SitemapsEntry<TE;>;"
    const-class v1, Lcom/google/gdata/data/webmastertools/SitemapsEntry$UrlCount;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/webmastertools/SitemapsEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitemapsEntry$UrlCount;

    .line 145
    .local v0, "count":Lcom/google/gdata/data/webmastertools/SitemapsEntry$UrlCount;
    if-nez v0, :cond_0

    .line 146
    const/4 v1, 0x0

    .line 149
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/webmastertools/SitemapsEntry$UrlCount;->getIntValue()I

    move-result v1

    goto :goto_0
.end method

.method public setSitemapDownloadTime(Lcom/google/gdata/data/DateTime;)V
    .locals 2
    .param p1, "value"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 106
    .local p0, "this":Lcom/google/gdata/data/webmastertools/SitemapsEntry;, "Lcom/google/gdata/data/webmastertools/SitemapsEntry<TE;>;"
    const-class v1, Lcom/google/gdata/data/webmastertools/SitemapsEntry$LastDownloaded;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/webmastertools/SitemapsEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitemapsEntry$LastDownloaded;

    .line 107
    .local v0, "time":Lcom/google/gdata/data/webmastertools/SitemapsEntry$LastDownloaded;
    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/google/gdata/data/webmastertools/SitemapsEntry$LastDownloaded;

    .end local v0    # "time":Lcom/google/gdata/data/webmastertools/SitemapsEntry$LastDownloaded;
    invoke-direct {v0}, Lcom/google/gdata/data/webmastertools/SitemapsEntry$LastDownloaded;-><init>()V

    .line 109
    .restart local v0    # "time":Lcom/google/gdata/data/webmastertools/SitemapsEntry$LastDownloaded;
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitemapsEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 112
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/webmastertools/SitemapsEntry$LastDownloaded;->setDateTime(Lcom/google/gdata/data/DateTime;)V

    .line 113
    return-void
.end method

.method public setSitemapStatus(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 81
    .local p0, "this":Lcom/google/gdata/data/webmastertools/SitemapsEntry;, "Lcom/google/gdata/data/webmastertools/SitemapsEntry<TE;>;"
    const-class v1, Lcom/google/gdata/data/webmastertools/SitemapsEntry$SitemapStatus;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/webmastertools/SitemapsEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitemapsEntry$SitemapStatus;

    .line 82
    .local v0, "status":Lcom/google/gdata/data/webmastertools/SitemapsEntry$SitemapStatus;
    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/google/gdata/data/webmastertools/SitemapsEntry$SitemapStatus;

    .end local v0    # "status":Lcom/google/gdata/data/webmastertools/SitemapsEntry$SitemapStatus;
    invoke-direct {v0}, Lcom/google/gdata/data/webmastertools/SitemapsEntry$SitemapStatus;-><init>()V

    .line 84
    .restart local v0    # "status":Lcom/google/gdata/data/webmastertools/SitemapsEntry$SitemapStatus;
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitemapsEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 87
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/webmastertools/SitemapsEntry$SitemapStatus;->setValue(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public setSitemapUrlCount(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 131
    .local p0, "this":Lcom/google/gdata/data/webmastertools/SitemapsEntry;, "Lcom/google/gdata/data/webmastertools/SitemapsEntry<TE;>;"
    const-class v1, Lcom/google/gdata/data/webmastertools/SitemapsEntry$UrlCount;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/webmastertools/SitemapsEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/webmastertools/SitemapsEntry$UrlCount;

    .line 132
    .local v0, "count":Lcom/google/gdata/data/webmastertools/SitemapsEntry$UrlCount;
    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/google/gdata/data/webmastertools/SitemapsEntry$UrlCount;

    .end local v0    # "count":Lcom/google/gdata/data/webmastertools/SitemapsEntry$UrlCount;
    invoke-direct {v0}, Lcom/google/gdata/data/webmastertools/SitemapsEntry$UrlCount;-><init>()V

    .line 134
    .restart local v0    # "count":Lcom/google/gdata/data/webmastertools/SitemapsEntry$UrlCount;
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/SitemapsEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 137
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/webmastertools/SitemapsEntry$UrlCount;->setIntValue(I)V

    .line 138
    return-void
.end method
