.class public final Lcom/google/gdata/data/extensions/Labels;
.super Ljava/lang/Object;
.source "Labels.java"


# static fields
.field public static final HIDDEN:Lcom/google/gdata/data/Category;

.field public static final MINE:Lcom/google/gdata/data/Category;

.field public static final PRIVATE:Lcom/google/gdata/data/Category;

.field public static final PUBLISHED:Lcom/google/gdata/data/Category;

.field public static final RESTRICTED_DOWNLOAD:Lcom/google/gdata/data/Category;

.field public static final SHARED_WITH_DOMAIN:Lcom/google/gdata/data/Category;

.field public static final STARRED:Lcom/google/gdata/data/Category;

.field public static final TRASHED:Lcom/google/gdata/data/Category;

.field public static final VIEWED:Lcom/google/gdata/data/Category;

.field private static final gLabels:Ljava/lang/String; = "http://schemas.google.com/g/2005/labels"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "starred"

    invoke-static {v0}, Lcom/google/gdata/data/extensions/Labels;->newLabel(Ljava/lang/String;)Lcom/google/gdata/data/Category;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/extensions/Labels;->STARRED:Lcom/google/gdata/data/Category;

    .line 43
    const-string v0, "trashed"

    invoke-static {v0}, Lcom/google/gdata/data/extensions/Labels;->newLabel(Ljava/lang/String;)Lcom/google/gdata/data/Category;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/extensions/Labels;->TRASHED:Lcom/google/gdata/data/Category;

    .line 46
    const-string v0, "published"

    invoke-static {v0}, Lcom/google/gdata/data/extensions/Labels;->newLabel(Ljava/lang/String;)Lcom/google/gdata/data/Category;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/extensions/Labels;->PUBLISHED:Lcom/google/gdata/data/Category;

    .line 49
    const-string v0, "private"

    invoke-static {v0}, Lcom/google/gdata/data/extensions/Labels;->newLabel(Ljava/lang/String;)Lcom/google/gdata/data/Category;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/extensions/Labels;->PRIVATE:Lcom/google/gdata/data/Category;

    .line 52
    const-string v0, "mine"

    invoke-static {v0}, Lcom/google/gdata/data/extensions/Labels;->newLabel(Ljava/lang/String;)Lcom/google/gdata/data/Category;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/extensions/Labels;->MINE:Lcom/google/gdata/data/Category;

    .line 55
    const-string v0, "shared-with-domain"

    invoke-static {v0}, Lcom/google/gdata/data/extensions/Labels;->newLabel(Ljava/lang/String;)Lcom/google/gdata/data/Category;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/extensions/Labels;->SHARED_WITH_DOMAIN:Lcom/google/gdata/data/Category;

    .line 59
    const-string v0, "hidden"

    invoke-static {v0}, Lcom/google/gdata/data/extensions/Labels;->newLabel(Ljava/lang/String;)Lcom/google/gdata/data/Category;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/extensions/Labels;->HIDDEN:Lcom/google/gdata/data/Category;

    .line 62
    const-string v0, "viewed"

    invoke-static {v0}, Lcom/google/gdata/data/extensions/Labels;->newLabel(Ljava/lang/String;)Lcom/google/gdata/data/Category;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/extensions/Labels;->VIEWED:Lcom/google/gdata/data/Category;

    .line 65
    const-string v0, "restricted-download"

    invoke-static {v0}, Lcom/google/gdata/data/extensions/Labels;->newLabel(Ljava/lang/String;)Lcom/google/gdata/data/Category;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/extensions/Labels;->RESTRICTED_DOWNLOAD:Lcom/google/gdata/data/Category;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private static newLabel(Ljava/lang/String;)Lcom/google/gdata/data/Category;
    .locals 4
    .param p0, "termAndLabel"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005/labels"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://schemas.google.com/g/2005/labels#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
