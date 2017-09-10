.class public Lcom/google/gdata/data/docs/ChangelogFeed;
.super Lcom/google/gdata/data/BaseFeed;
.source "ChangelogFeed.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/docs/2007#change"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseFeed",
        "<",
        "Lcom/google/gdata/data/docs/ChangelogFeed;",
        "Lcom/google/gdata/data/docs/ChangelogEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    const-class v0, Lcom/google/gdata/data/docs/ChangelogEntry;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;)V

    .line 36
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/ChangelogFeed;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/docs/ChangelogEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseFeed;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "sourceFeed":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    const-class v0, Lcom/google/gdata/data/docs/ChangelogEntry;

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V

    .line 47
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 51
    const-class v0, Lcom/google/gdata/data/docs/ChangelogFeed;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 55
    const-class v0, Lcom/google/gdata/data/docs/ChangelogFeed;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/gdata/data/docs/LargestChangestamp;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    goto :goto_0
.end method

.method public getLargestChangestamp()Lcom/google/gdata/data/docs/LargestChangestamp;
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/google/gdata/data/docs/LargestChangestamp;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ChangelogFeed;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/LargestChangestamp;

    return-object v0
.end method

.method public hasLargestChangestamp()Z
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/google/gdata/data/docs/LargestChangestamp;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ChangelogFeed;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setLargestChangestamp(Lcom/google/gdata/data/docs/LargestChangestamp;)V
    .locals 1
    .param p1, "largestChangestamp"    # Lcom/google/gdata/data/docs/LargestChangestamp;

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    const-class v0, Lcom/google/gdata/data/docs/LargestChangestamp;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/ChangelogFeed;->removeExtension(Ljava/lang/Class;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/ChangelogFeed;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ChangelogFeed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method
