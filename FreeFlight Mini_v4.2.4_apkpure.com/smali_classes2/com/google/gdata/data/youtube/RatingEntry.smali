.class public Lcom/google/gdata/data/youtube/RatingEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "RatingEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://gdata.youtube.com/schemas/2007#rating"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/youtube/RatingEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 33
    const-string v0, "http://gdata.youtube.com/schemas/2007#rating"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 34
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
    .line 37
    .local p1, "base":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 38
    const-string v0, "http://gdata.youtube.com/schemas/2007#rating"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 71
    const-class v0, Lcom/google/gdata/data/youtube/RatingEntry;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/gdata/data/extensions/Rating;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 72
    const-class v0, Lcom/google/gdata/data/youtube/RatingEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtRating;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 73
    const-class v0, Lcom/google/gdata/data/youtube/RatingEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;)V

    .line 74
    return-void
.end method

.method public getRating()Lcom/google/gdata/data/extensions/Rating;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/google/gdata/data/extensions/Rating;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/RatingEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Rating;

    return-object v0
.end method

.method public getYtRating()Lcom/google/gdata/data/youtube/YtRating;
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/google/gdata/data/youtube/YtRating;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/RatingEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtRating;

    return-object v0
.end method

.method public setRating(Lcom/google/gdata/data/extensions/Rating;)V
    .locals 1
    .param p1, "rating"    # Lcom/google/gdata/data/extensions/Rating;

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    const-class v0, Lcom/google/gdata/data/extensions/Rating;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/RatingEntry;->removeExtension(Ljava/lang/Class;)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/youtube/RatingEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setYtRating(Lcom/google/gdata/data/youtube/YtRating;)V
    .locals 1
    .param p1, "rating"    # Lcom/google/gdata/data/youtube/YtRating;

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    const-class v0, Lcom/google/gdata/data/youtube/YtRating;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/RatingEntry;->removeExtension(Ljava/lang/Class;)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/youtube/RatingEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method
