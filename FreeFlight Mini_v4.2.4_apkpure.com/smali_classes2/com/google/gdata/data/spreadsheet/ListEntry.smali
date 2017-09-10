.class public Lcom/google/gdata/data/spreadsheet/ListEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "ListEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/spreadsheets/2006#list"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/spreadsheet/ListEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006#list"


# instance fields
.field private customElements:Lcom/google/gdata/data/spreadsheet/CustomElementCollection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/spreadsheets/2006"

    const-string v2, "http://schemas.google.com/spreadsheets/2006#list"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/spreadsheet/ListEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 57
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/ListEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/spreadsheet/ListEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-direct {p0}, Lcom/google/gdata/data/spreadsheet/ListEntry;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 2
    .param p1, "sourceEntry"    # Lcom/google/gdata/data/BaseEntry;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 81
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/ListEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/spreadsheet/ListEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    const-class v0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/ListEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/google/gdata/data/spreadsheet/ListEntry;->init()V

    .line 85
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "versionId"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/gdata/data/spreadsheet/ListEntry;-><init>()V

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/spreadsheet/ListEntry;->setId(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/spreadsheet/ListEntry;->setVersionId(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection;

    invoke-direct {v0}, Lcom/google/gdata/data/spreadsheet/CustomElementCollection;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/ListEntry;->customElements:Lcom/google/gdata/data/spreadsheet/CustomElementCollection;

    .line 92
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/ListEntry;->customElements:Lcom/google/gdata/data/spreadsheet/CustomElementCollection;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/ListEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 93
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 167
    const-class v0, Lcom/google/gdata/data/spreadsheet/ListEntry;

    invoke-static {}, Lcom/google/gdata/data/spreadsheet/CustomElementCollection;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 169
    return-void
.end method

.method public getCustomElements()Lcom/google/gdata/data/spreadsheet/CustomElementCollection;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/ListEntry;->customElements:Lcom/google/gdata/data/spreadsheet/CustomElementCollection;

    return-object v0
.end method

.method public setAutomaticallyGeneratedContent(Lcom/google/gdata/data/Content;)V
    .locals 1
    .param p1, "c"    # Lcom/google/gdata/data/Content;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/ListEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->content:Lcom/google/gdata/data/Content;

    .line 154
    return-void
.end method

.method public setAutomaticallyGeneratedSummary(Lcom/google/gdata/data/TextConstruct;)V
    .locals 1
    .param p1, "v"    # Lcom/google/gdata/data/TextConstruct;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/ListEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->summary:Lcom/google/gdata/data/TextConstruct;

    .line 161
    return-void
.end method

.method public setAutomaticallyGeneratedTitle(Lcom/google/gdata/data/TextConstruct;)V
    .locals 1
    .param p1, "v"    # Lcom/google/gdata/data/TextConstruct;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/ListEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iput-object p1, v0, Lcom/google/gdata/data/BaseEntry$EntryState;->title:Lcom/google/gdata/data/TextConstruct;

    .line 147
    return-void
.end method

.method public setContent(Lcom/google/gdata/data/Content;)V
    .locals 2
    .param p1, "c"    # Lcom/google/gdata/data/Content;

    .prologue
    .line 119
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Content is server-generated for Google Spreadsheets list access."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContent(Lcom/google/gdata/data/TextConstruct;)V
    .locals 2
    .param p1, "c"    # Lcom/google/gdata/data/TextConstruct;

    .prologue
    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Content is server-generated for Google Spreadsheets list access."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSummary(Lcom/google/gdata/data/TextConstruct;)V
    .locals 2
    .param p1, "v"    # Lcom/google/gdata/data/TextConstruct;

    .prologue
    .line 137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Summary is server-generated for Google Spreadsheets list access."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTitle(Lcom/google/gdata/data/TextConstruct;)V
    .locals 2
    .param p1, "v"    # Lcom/google/gdata/data/TextConstruct;

    .prologue
    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Title is server-generated for Google Spreadsheets list access."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
