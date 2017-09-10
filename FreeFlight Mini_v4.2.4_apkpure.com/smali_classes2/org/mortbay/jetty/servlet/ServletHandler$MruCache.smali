.class Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;
.super Ljava/util/LinkedHashMap;
.source "ServletHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/jetty/servlet/ServletHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MruCache"
.end annotation


# instance fields
.field private maxEntries:I

.field private final this$0:Lorg/mortbay/jetty/servlet/ServletHandler;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/servlet/ServletHandler;)V
    .locals 1

    .prologue
    .line 606
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;->this$0:Lorg/mortbay/jetty/servlet/ServletHandler;

    .line 607
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 603
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;->maxEntries:I

    .line 608
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/jetty/servlet/ServletHandler;I)V
    .locals 1
    .param p2, "maxSize"    # I

    .prologue
    .line 611
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;->this$0:Lorg/mortbay/jetty/servlet/ServletHandler;

    .line 612
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 603
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;->maxEntries:I

    .line 613
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;->setMaxEntries(I)V

    .line 614
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .param p1, "eldest"    # Ljava/util/Map$Entry;

    .prologue
    .line 618
    invoke-virtual {p0}, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;->size()I

    move-result v0

    iget v1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;->maxEntries:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMaxEntries(I)V
    .locals 0
    .param p1, "maxEntries"    # I

    .prologue
    .line 623
    iput p1, p0, Lorg/mortbay/jetty/servlet/ServletHandler$MruCache;->maxEntries:I

    .line 624
    return-void
.end method
