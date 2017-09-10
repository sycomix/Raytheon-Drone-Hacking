.class public Lcom/google/gdata/data/youtube/VideoMessageEntry;
.super Lcom/google/gdata/data/youtube/VideoEntry;
.source "VideoMessageEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://gdata.youtube.com/schemas/2007#videoMessage"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/gdata/data/youtube/VideoEntry;-><init>()V

    .line 34
    const-string v0, "http://gdata.youtube.com/schemas/2007#videoMessage"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "original":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/youtube/VideoEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 40
    const-string v0, "http://gdata.youtube.com/schemas/2007#videoMessage"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/google/gdata/data/youtube/VideoEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 56
    const-class v0, Lcom/google/gdata/data/youtube/VideoMessageEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtDescription;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 57
    const-class v0, Lcom/google/gdata/data/youtube/PlaylistEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;)V

    .line 58
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 68
    const-class v1, Lcom/google/gdata/data/youtube/YtDescription;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/VideoMessageEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtDescription;

    .line 69
    .local v0, "description":Lcom/google/gdata/data/youtube/YtDescription;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtDescription;->getContent()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    const-class v0, Lcom/google/gdata/data/youtube/YtDescription;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/VideoMessageEntry;->removeExtension(Ljava/lang/Class;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtDescription;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtDescription;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/VideoMessageEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method
