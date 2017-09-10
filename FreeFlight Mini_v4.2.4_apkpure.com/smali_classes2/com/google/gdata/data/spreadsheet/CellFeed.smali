.class public Lcom/google/gdata/data/spreadsheet/CellFeed;
.super Lcom/google/gdata/data/BaseFeed;
.source "CellFeed.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/spreadsheets/2006#cell"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseFeed",
        "<",
        "Lcom/google/gdata/data/spreadsheet/CellFeed;",
        "Lcom/google/gdata/data/spreadsheet/CellEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    const-class v0, Lcom/google/gdata/data/spreadsheet/CellEntry;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;)V

    .line 36
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/CellFeed;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/spreadsheet/CellEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseFeed;)V
    .locals 2
    .param p1, "sourceFeed"    # Lcom/google/gdata/data/BaseFeed;

    .prologue
    .line 41
    const-class v0, Lcom/google/gdata/data/spreadsheet/CellEntry;

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V

    .line 42
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/CellFeed;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/spreadsheet/CellEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 47
    const-class v0, Lcom/google/gdata/data/spreadsheet/CellFeed;

    invoke-static {}, Lcom/google/gdata/data/spreadsheet/RowCount;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 48
    const-class v0, Lcom/google/gdata/data/spreadsheet/CellFeed;

    invoke-static {}, Lcom/google/gdata/data/spreadsheet/ColCount;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 49
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 50
    invoke-static {p1}, Lcom/google/gdata/data/batch/BatchUtils;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 51
    return-void
.end method

.method public getColCount()I
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/google/gdata/data/spreadsheet/ColCount;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/CellFeed;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/spreadsheet/ColCount;

    invoke-virtual {v0}, Lcom/google/gdata/data/spreadsheet/ColCount;->getCount()I

    move-result v0

    return v0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/google/gdata/data/spreadsheet/RowCount;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/CellFeed;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/spreadsheet/RowCount;

    invoke-virtual {v0}, Lcom/google/gdata/data/spreadsheet/RowCount;->getCount()I

    move-result v0

    return v0
.end method
