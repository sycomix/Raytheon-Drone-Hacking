.class public Lcom/google/gdata/data/youtube/CommentEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "CommentEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://gdata.youtube.com/schemas/2007#comment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/youtube/CommentEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 32
    const-string v0, "http://gdata.youtube.com/schemas/2007#comment"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 33
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
    .line 36
    .local p1, "base":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 37
    const-string v0, "http://gdata.youtube.com/schemas/2007#comment"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 92
    sget-object v0, Lcom/google/gdata/data/youtube/YouTubeNamespace;->NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 93
    const-class v0, Lcom/google/gdata/data/youtube/CommentEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtSpam;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 94
    const-class v0, Lcom/google/gdata/data/youtube/CommentEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtCommentRating;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 96
    const-class v0, Lcom/google/gdata/data/youtube/CommentEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;)V

    .line 97
    return-void
.end method

.method public getTotalRating()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 48
    const-class v1, Lcom/google/gdata/data/youtube/YtCommentRating;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/CommentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtCommentRating;

    .line 49
    .local v0, "rating":Lcom/google/gdata/data/youtube/YtCommentRating;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtCommentRating;->getTotal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public hasSpamHint()Z
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/google/gdata/data/youtube/YtSpam;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/CommentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSpamHint(Z)V
    .locals 1
    .param p1, "spam"    # Z

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    new-instance v0, Lcom/google/gdata/data/youtube/YtSpam;

    invoke-direct {v0}, Lcom/google/gdata/data/youtube/YtSpam;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/CommentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    const-class v0, Lcom/google/gdata/data/youtube/YtSpam;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/CommentEntry;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setTotalRating(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "rating"    # Ljava/lang/Integer;

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    const-class v0, Lcom/google/gdata/data/youtube/YtCommentRating;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/CommentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtCommentRating;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/gdata/data/youtube/YtCommentRating;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/CommentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method
