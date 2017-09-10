.class public Lcom/google/gdata/data/spreadsheet/CellEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "CellEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/spreadsheets/2006#cell"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/spreadsheet/CellEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006#cell"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/spreadsheets/2006"

    const-string v2, "http://schemas.google.com/spreadsheets/2006#cell"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/spreadsheet/CellEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 51
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/CellEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/spreadsheet/CellEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "newInputValue"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v0, Lcom/google/gdata/data/spreadsheet/Cell;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/gdata/data/spreadsheet/Cell;-><init>(IILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/gdata/data/spreadsheet/CellEntry;-><init>(Lcom/google/gdata/data/spreadsheet/Cell;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 2
    .param p1, "sourceEntry"    # Lcom/google/gdata/data/BaseEntry;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 84
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/CellEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/spreadsheet/CellEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/spreadsheet/Cell;)V
    .locals 0
    .param p1, "cell"    # Lcom/google/gdata/data/spreadsheet/Cell;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/gdata/data/spreadsheet/CellEntry;-><init>()V

    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/spreadsheet/CellEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method public changeInputValueLocal(Ljava/lang/String;)V
    .locals 1
    .param p1, "newInputValue"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/CellEntry;->getCell()Lcom/google/gdata/data/spreadsheet/Cell;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/spreadsheet/Cell;->withNewInputValue(Ljava/lang/String;)Lcom/google/gdata/data/spreadsheet/Cell;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/CellEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 128
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 134
    const-class v0, Lcom/google/gdata/data/spreadsheet/CellEntry;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/gdata/data/spreadsheet/Cell;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 135
    return-void
.end method

.method public getCell()Lcom/google/gdata/data/spreadsheet/Cell;
    .locals 1

    .prologue
    .line 92
    const-class v0, Lcom/google/gdata/data/spreadsheet/Cell;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/CellEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/spreadsheet/Cell;

    return-object v0
.end method

.method public setAutomaticallyGeneratedContent(Lcom/google/gdata/data/Content;)V
    .locals 1
    .param p1, "v"    # Lcom/google/gdata/data/Content;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/CellEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->content:Lcom/google/gdata/data/Content;

    .line 149
    return-void
.end method

.method public setAutomaticallyGeneratedTitle(Lcom/google/gdata/data/TextConstruct;)V
    .locals 1
    .param p1, "v"    # Lcom/google/gdata/data/TextConstruct;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/CellEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->title:Lcom/google/gdata/data/TextConstruct;

    .line 142
    return-void
.end method

.method public setContent(Lcom/google/gdata/data/Content;)V
    .locals 2
    .param p1, "v"    # Lcom/google/gdata/data/Content;

    .prologue
    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Field is server-generated."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContent(Lcom/google/gdata/data/TextConstruct;)V
    .locals 2
    .param p1, "v"    # Lcom/google/gdata/data/TextConstruct;

    .prologue
    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Field is server-generated."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSummary(Lcom/google/gdata/data/TextConstruct;)V
    .locals 2
    .param p1, "v"    # Lcom/google/gdata/data/TextConstruct;

    .prologue
    .line 116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Field is server-generated."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTitle(Lcom/google/gdata/data/TextConstruct;)V
    .locals 2
    .param p1, "v"    # Lcom/google/gdata/data/TextConstruct;

    .prologue
    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Field is server-generated."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
