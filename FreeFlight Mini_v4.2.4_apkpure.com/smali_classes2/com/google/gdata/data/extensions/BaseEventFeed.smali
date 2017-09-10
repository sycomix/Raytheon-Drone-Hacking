.class public abstract Lcom/google/gdata/data/extensions/BaseEventFeed;
.super Lcom/google/gdata/data/BaseFeed;
.source "BaseEventFeed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lcom/google/gdata/data/extensions/BaseEventFeed",
        "<TF;TE;>;E:",
        "Lcom/google/gdata/data/extensions/BaseEventEntry",
        "<TE;>;>",
        "Lcom/google/gdata/data/BaseFeed",
        "<TF;TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/google/gdata/data/extensions/BaseEventFeed;, "Lcom/google/gdata/data/extensions/BaseEventFeed<TF;TE;>;"
    .local p1, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;)V

    .line 40
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/BaseEventFeed;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/extensions/EventEntry;->EVENT_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/google/gdata/data/extensions/BaseEventFeed;, "Lcom/google/gdata/data/extensions/BaseEventFeed<TF;TE;>;"
    .local p1, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "sourceFeed":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V

    .line 52
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/BaseEventFeed;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/extensions/EventEntry;->EVENT_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 59
    .local p0, "this":Lcom/google/gdata/data/extensions/BaseEventFeed;, "Lcom/google/gdata/data/extensions/BaseEventFeed<TF;TE;>;"
    const-class v0, Lcom/google/gdata/data/extensions/BaseEventFeed;

    invoke-static {}, Lcom/google/gdata/data/extensions/Where;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 62
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 63
    return-void
.end method
