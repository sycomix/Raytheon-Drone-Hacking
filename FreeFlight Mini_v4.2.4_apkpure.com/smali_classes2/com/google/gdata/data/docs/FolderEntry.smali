.class public Lcom/google/gdata/data/docs/FolderEntry;
.super Lcom/google/gdata/data/docs/DocumentListEntry;
.source "FolderEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/docs/2007#folder"
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/docs/2007#folder"

.field public static final LABEL:Ljava/lang/String; = "folder"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/docs/2007#folder"

    const-string v3, "folder"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/FolderEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/gdata/data/docs/DocumentListEntry;-><init>()V

    .line 53
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/FolderEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/docs/DocumentListEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/FolderEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/docs/FolderEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<",
            "Lcom/google/gdata/data/docs/FolderEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<Lcom/google/gdata/data/docs/FolderEntry;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/docs/DocumentListEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 63
    return-void
.end method
