.class public Lcom/google/gdata/data/spreadsheet/SpreadsheetFeed;
.super Lcom/google/gdata/data/BaseFeed;
.source "SpreadsheetFeed.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/spreadsheets/2006#spreadsheet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseFeed",
        "<",
        "Lcom/google/gdata/data/spreadsheet/SpreadsheetFeed;",
        "Lcom/google/gdata/data/spreadsheet/SpreadsheetEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    const-class v0, Lcom/google/gdata/data/spreadsheet/SpreadsheetEntry;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;)V

    .line 35
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/SpreadsheetFeed;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/spreadsheet/SpreadsheetEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseFeed;)V
    .locals 2
    .param p1, "sourceFeed"    # Lcom/google/gdata/data/BaseFeed;

    .prologue
    .line 39
    const-class v0, Lcom/google/gdata/data/spreadsheet/SpreadsheetEntry;

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V

    .line 40
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/SpreadsheetFeed;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/spreadsheet/SpreadsheetEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 0
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 47
    return-void
.end method
