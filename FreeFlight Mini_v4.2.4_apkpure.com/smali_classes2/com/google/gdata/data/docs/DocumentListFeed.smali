.class public Lcom/google/gdata/data/docs/DocumentListFeed;
.super Lcom/google/gdata/data/media/MediaFeed;
.source "DocumentListFeed.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/docs/2007#item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/media/MediaFeed",
        "<",
        "Lcom/google/gdata/data/docs/DocumentListFeed;",
        "Lcom/google/gdata/data/docs/DocumentListEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final DOCUMENT_NAMESPACE:Ljava/lang/String; = "http://schemas.google.com/docs/2007"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    const-class v0, Lcom/google/gdata/data/docs/DocumentListEntry;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/media/MediaFeed;-><init>(Ljava/lang/Class;)V

    .line 40
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/DocumentListFeed;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/docs/DocumentListEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method
