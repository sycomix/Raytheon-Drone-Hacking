.class public Lcom/google/gdata/data/codesearch/CodeSearchEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "CodeSearchEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/codesearch/2006#result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/codesearch/CodeSearchEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CODESEARCH_CATEGORY:Lcom/google/gdata/data/Category;

.field public static final CODESEARCH_KIND:Ljava/lang/String; = "http://schemas.google.com/codesearch/2006#result"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/codesearch/2006#result"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/codesearch/CodeSearchEntry;->CODESEARCH_CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 53
    invoke-virtual {p0}, Lcom/google/gdata/data/codesearch/CodeSearchEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/codesearch/CodeSearchEntry;->CODESEARCH_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 2
    .param p1, "sourceEntry"    # Lcom/google/gdata/data/BaseEntry;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/gdata/data/codesearch/CodeSearchEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/codesearch/CodeSearchEntry;->CODESEARCH_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 71
    const-class v0, Lcom/google/gdata/data/codesearch/CodeSearchEntry;

    invoke-static {}, Lcom/google/gdata/data/codesearch/File;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 72
    const-class v0, Lcom/google/gdata/data/codesearch/CodeSearchEntry;

    invoke-static {}, Lcom/google/gdata/data/codesearch/Package;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 73
    const-class v0, Lcom/google/gdata/data/codesearch/CodeSearchEntry;

    invoke-static {}, Lcom/google/gdata/data/codesearch/Match;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 74
    return-void
.end method

.method public getFile()Lcom/google/gdata/data/codesearch/File;
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/google/gdata/data/codesearch/File;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/codesearch/CodeSearchEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/codesearch/File;

    return-object v0
.end method

.method public getMatches()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/codesearch/Match;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    const-class v0, Lcom/google/gdata/data/codesearch/Match;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/codesearch/CodeSearchEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Lcom/google/gdata/data/codesearch/Package;
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/google/gdata/data/codesearch/Package;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/codesearch/CodeSearchEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/codesearch/Package;

    return-object v0
.end method
