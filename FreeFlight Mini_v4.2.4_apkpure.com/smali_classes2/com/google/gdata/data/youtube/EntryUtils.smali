.class Lcom/google/gdata/data/youtube/EntryUtils;
.super Ljava/lang/Object;
.source "EntryUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static addKindCategory(Ljava/util/Set;Ljava/lang/String;)V
    .locals 2
    .param p1, "kind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/data/Category;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "categories":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/data/Category;>;"
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    invoke-direct {v0, v1, p1}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method static getFeedLink(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)Lcom/google/gdata/data/extensions/FeedLink;
    .locals 3
    .param p1, "rel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/gdata/data/extensions/FeedLink",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "entry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    const-class v2, Lcom/google/gdata/data/extensions/FeedLink;

    invoke-virtual {p0, v2}, Lcom/google/gdata/data/BaseEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/FeedLink;

    .line 74
    .local v0, "feedLink":Lcom/google/gdata/data/extensions/FeedLink;, "Lcom/google/gdata/data/extensions/FeedLink<*>;"
    invoke-virtual {v0}, Lcom/google/gdata/data/extensions/FeedLink;->getRel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    .end local v0    # "feedLink":Lcom/google/gdata/data/extensions/FeedLink;, "Lcom/google/gdata/data/extensions/FeedLink<*>;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static removeKindCategory(Ljava/util/Iterator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/gdata/data/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gdata/data/Category;>;"
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Category;

    .line 57
    .local v0, "category":Lcom/google/gdata/data/Category;
    const-string v1, "http://schemas.google.com/g/2005#kind"

    invoke-virtual {v0}, Lcom/google/gdata/data/Category;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 61
    .end local v0    # "category":Lcom/google/gdata/data/Category;
    :cond_1
    return-void
.end method

.method static setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V
    .locals 1
    .param p1, "newKind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "entry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/data/youtube/EntryUtils;->removeKindCategory(Ljava/util/Iterator;)V

    .line 43
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/gdata/data/youtube/EntryUtils;->addKindCategory(Ljava/util/Set;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method static setKind(Lcom/google/gdata/data/BaseFeed;Ljava/lang/String;)V
    .locals 1
    .param p1, "newKind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "feed":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/data/youtube/EntryUtils;->removeKindCategory(Ljava/util/Iterator;)V

    .line 51
    invoke-virtual {p0}, Lcom/google/gdata/data/BaseFeed;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/gdata/data/youtube/EntryUtils;->addKindCategory(Ljava/util/Set;Ljava/lang/String;)V

    .line 52
    return-void
.end method
