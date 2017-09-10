.class public Lcom/google/gdata/data/spreadsheet/TableEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "TableEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/spreadsheets/2006#table"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/spreadsheet/TableEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006#table"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/spreadsheets/2006#table"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/spreadsheet/TableEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 49
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/TableEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/spreadsheet/TableEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 60
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 4
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    const-class v0, Lcom/google/gdata/data/spreadsheet/TableEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 68
    const-class v0, Lcom/google/gdata/data/spreadsheet/TableEntry;

    invoke-static {v3, v2}, Lcom/google/gdata/data/spreadsheet/Data;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 70
    new-instance v0, Lcom/google/gdata/data/spreadsheet/Data;

    invoke-direct {v0}, Lcom/google/gdata/data/spreadsheet/Data;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/spreadsheet/Data;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 71
    const-class v0, Lcom/google/gdata/data/spreadsheet/TableEntry;

    invoke-static {v3, v2}, Lcom/google/gdata/data/spreadsheet/Header;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 73
    const-class v0, Lcom/google/gdata/data/spreadsheet/TableEntry;

    invoke-static {v3, v2}, Lcom/google/gdata/data/spreadsheet/Worksheet;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    goto :goto_0
.end method

.method public getData()Lcom/google/gdata/data/spreadsheet/Data;
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/google/gdata/data/spreadsheet/Data;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/TableEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/spreadsheet/Data;

    return-object v0
.end method

.method public getHeader()Lcom/google/gdata/data/spreadsheet/Header;
    .locals 1

    .prologue
    .line 114
    const-class v0, Lcom/google/gdata/data/spreadsheet/Header;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/TableEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/spreadsheet/Header;

    return-object v0
.end method

.method public getRecordsFeedLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 177
    const-string v0, "http://schemas.google.com/spreadsheets/2006#recordsfeed"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/spreadsheet/TableEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getWorksheet()Lcom/google/gdata/data/spreadsheet/Worksheet;
    .locals 1

    .prologue
    .line 145
    const-class v0, Lcom/google/gdata/data/spreadsheet/Worksheet;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/TableEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/spreadsheet/Worksheet;

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 105
    const-class v0, Lcom/google/gdata/data/spreadsheet/Data;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/TableEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasHeader()Z
    .locals 1

    .prologue
    .line 136
    const-class v0, Lcom/google/gdata/data/spreadsheet/Header;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/TableEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasWorksheet()Z
    .locals 1

    .prologue
    .line 168
    const-class v0, Lcom/google/gdata/data/spreadsheet/Worksheet;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/TableEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setData(Lcom/google/gdata/data/spreadsheet/Data;)V
    .locals 1
    .param p1, "data"    # Lcom/google/gdata/data/spreadsheet/Data;

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    const-class v0, Lcom/google/gdata/data/spreadsheet/Data;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/TableEntry;->removeExtension(Ljava/lang/Class;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/spreadsheet/TableEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setHeader(Lcom/google/gdata/data/spreadsheet/Header;)V
    .locals 1
    .param p1, "header"    # Lcom/google/gdata/data/spreadsheet/Header;

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    const-class v0, Lcom/google/gdata/data/spreadsheet/Header;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/TableEntry;->removeExtension(Ljava/lang/Class;)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/spreadsheet/TableEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setWorksheet(Lcom/google/gdata/data/spreadsheet/Worksheet;)V
    .locals 1
    .param p1, "worksheet"    # Lcom/google/gdata/data/spreadsheet/Worksheet;

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 156
    const-class v0, Lcom/google/gdata/data/spreadsheet/Worksheet;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/TableEntry;->removeExtension(Ljava/lang/Class;)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/spreadsheet/TableEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{TableEntry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method
