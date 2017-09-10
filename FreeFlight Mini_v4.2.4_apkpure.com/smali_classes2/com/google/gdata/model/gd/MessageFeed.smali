.class public Lcom/google/gdata/model/gd/MessageFeed;
.super Lcom/google/gdata/model/atom/Feed;
.source "MessageFeed.java"


# static fields
.field public static final CATEGORY:Lcom/google/gdata/model/atom/Category;

.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "Lcom/google/gdata/model/gd/MessageFeed;",
            ">;"
        }
    .end annotation
.end field

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/g/2005#message"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/google/gdata/model/atom/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/g/2005#message"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/atom/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gdata/model/atom/Category;->lock()Lcom/google/gdata/model/atom/Category;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/MessageFeed;->CATEGORY:Lcom/google/gdata/model/atom/Category;

    .line 52
    sget-object v0, Lcom/google/gdata/model/atom/Feed;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v0}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/google/gdata/model/gd/MessageFeed;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/MessageFeed;->KEY:Lcom/google/gdata/model/ElementKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/google/gdata/model/gd/MessageFeed;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/atom/Feed;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 82
    sget-object v0, Lcom/google/gdata/model/gd/MessageFeed;->CATEGORY:Lcom/google/gdata/model/atom/Category;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/gd/MessageFeed;->addCategory(Lcom/google/gdata/model/atom/Category;)V

    .line 83
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/MessageFeed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/MessageFeed;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/atom/Feed;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 100
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/atom/Feed;)V
    .locals 0
    .param p2, "source"    # Lcom/google/gdata/model/atom/Feed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/MessageFeed;",
            ">;",
            "Lcom/google/gdata/model/atom/Feed;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/MessageFeed;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/atom/Feed;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/atom/Feed;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/model/atom/Feed;)V
    .locals 1
    .param p1, "sourceFeed"    # Lcom/google/gdata/model/atom/Feed;

    .prologue
    .line 92
    sget-object v0, Lcom/google/gdata/model/gd/MessageFeed;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/model/atom/Feed;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/atom/Feed;)V

    .line 93
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 4
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 59
    sget-object v1, Lcom/google/gdata/model/gd/MessageFeed;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/google/gdata/model/atom/Feed;->registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 67
    sget-object v1, Lcom/google/gdata/model/gd/MessageFeed;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 70
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    invoke-interface {v0}, Lcom/google/gdata/model/ElementCreator;->addUndeclaredElementMarker()Lcom/google/gdata/model/ElementCreator;

    .line 71
    sget-object v1, Lcom/google/gdata/model/gd/MessageEntry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 74
    sget-object v1, Lcom/google/gdata/model/atom/Feed;->KEY:Lcom/google/gdata/model/ElementKey;

    const-string v2, "http://schemas.google.com/g/2005#message"

    sget-object v3, Lcom/google/gdata/model/gd/MessageFeed;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/gdata/model/MetadataRegistry;->adapt(Lcom/google/gdata/model/ElementKey;Ljava/lang/String;Lcom/google/gdata/model/ElementKey;)V

    goto :goto_0
.end method


# virtual methods
.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/gdata/model/gd/MessageEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    sget-object v0, Lcom/google/gdata/model/gd/MessageEntry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/gd/MessageFeed;->getEntries(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic lock()Lcom/google/gdata/model/Element;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/MessageFeed;->lock()Lcom/google/gdata/model/gd/MessageFeed;

    move-result-object v0

    return-object v0
.end method

.method public lock()Lcom/google/gdata/model/gd/MessageFeed;
    .locals 1

    .prologue
    .line 118
    invoke-super {p0}, Lcom/google/gdata/model/atom/Feed;->lock()Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/MessageFeed;

    return-object v0
.end method
