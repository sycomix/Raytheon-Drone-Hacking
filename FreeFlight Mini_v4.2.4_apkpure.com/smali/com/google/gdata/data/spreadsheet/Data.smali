.class public Lcom/google/gdata/data/spreadsheet/Data;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Data.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "data"
    nsAlias = "gs"
    nsUri = "http://schemas.google.com/spreadsheets/2006"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;
    }
.end annotation


# static fields
.field private static final INSERTIONMODE:Ljava/lang/String; = "insertionMode"

.field private static final INSERTIONMODE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue",
            "<",
            "Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;",
            ">;"
        }
    .end annotation
.end field

.field private static final NUMROWS:Ljava/lang/String; = "numRows"

.field private static final STARTROW:Ljava/lang/String; = "startRow"

.field static final XML_NAME:Ljava/lang/String; = "data"


# instance fields
.field private insertionMode:Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

.field private numberOfRows:Ljava/lang/Integer;

.field private startIndex:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;

    invoke-direct {v0}, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;-><init>()V

    sput-object v0, Lcom/google/gdata/data/spreadsheet/Data;->INSERTIONMODE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Data;->insertionMode:Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

    .line 59
    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Data;->numberOfRows:Ljava/lang/Integer;

    .line 62
    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Data;->startIndex:Ljava/lang/Integer;

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "insertionMode"    # Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;
    .param p2, "numberOfRows"    # Ljava/lang/Integer;
    .param p3, "startIndex"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Data;->insertionMode:Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

    .line 59
    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Data;->numberOfRows:Ljava/lang/Integer;

    .line 62
    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Data;->startIndex:Ljava/lang/Integer;

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/spreadsheet/Data;->setInsertionMode(Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;)V

    .line 93
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/spreadsheet/Data;->setNumberOfRows(Ljava/lang/Integer;)V

    .line 94
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/spreadsheet/Data;->setStartIndex(Ljava/lang/Integer;)V

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/Data;->setImmutable(Z)V

    .line 96
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 238
    const-class v1, Lcom/google/gdata/data/spreadsheet/Data;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 240
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 241
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 242
    return-object v0
.end method


# virtual methods
.method public addColumn(Lcom/google/gdata/data/spreadsheet/Column;)V
    .locals 1
    .param p1, "column"    # Lcom/google/gdata/data/spreadsheet/Column;

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/Data;->getColumns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 6
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 256
    const-string v1, "insertionMode"

    const-class v3, Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/gdata/data/spreadsheet/Data;->INSERTIONMODE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/AttributeHelper;->consumeEnum(Ljava/lang/String;ZLjava/lang/Class;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Data;->insertionMode:Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

    .line 258
    const-string v0, "numRows"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Data;->numberOfRows:Ljava/lang/Integer;

    .line 259
    const-string v0, "startRow"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Data;->startIndex:Ljava/lang/Integer;

    .line 260
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 100
    const-class v0, Lcom/google/gdata/data/spreadsheet/Data;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    const-class v0, Lcom/google/gdata/data/spreadsheet/Data;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/gdata/data/spreadsheet/Column;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    goto :goto_0
.end method

.method public getColumns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/spreadsheet/Column;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    const-class v0, Lcom/google/gdata/data/spreadsheet/Column;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/Data;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInsertionMode()Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/Data;->insertionMode:Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

    return-object v0
.end method

.method public getNumberOfRows()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/Data;->numberOfRows:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStartIndex()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/Data;->startIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public hasColumns()Z
    .locals 1

    .prologue
    .line 130
    const-class v0, Lcom/google/gdata/data/spreadsheet/Column;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/Data;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasInsertionMode()Z
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/Data;->getInsertionMode()Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumberOfRows()Z
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/Data;->getNumberOfRows()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStartIndex()Z
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/Data;->getStartIndex()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 3
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 247
    const-string v0, "insertionMode"

    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Data;->insertionMode:Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

    sget-object v2, Lcom/google/gdata/data/spreadsheet/Data;->INSERTIONMODE_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)V

    .line 249
    const-string v0, "numRows"

    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Data;->numberOfRows:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 250
    const-string v0, "startRow"

    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Data;->startIndex:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 251
    return-void
.end method

.method public setInsertionMode(Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;)V
    .locals 0
    .param p1, "insertionMode"    # Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/Data;->throwExceptionIfImmutable()V

    .line 149
    iput-object p1, p0, Lcom/google/gdata/data/spreadsheet/Data;->insertionMode:Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

    .line 150
    return-void
.end method

.method public setNumberOfRows(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "numberOfRows"    # Ljava/lang/Integer;

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/Data;->throwExceptionIfImmutable()V

    .line 178
    iput-object p1, p0, Lcom/google/gdata/data/spreadsheet/Data;->numberOfRows:Ljava/lang/Integer;

    .line 179
    return-void
.end method

.method public setStartIndex(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "startIndex"    # Ljava/lang/Integer;

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/Data;->throwExceptionIfImmutable()V

    .line 207
    iput-object p1, p0, Lcom/google/gdata/data/spreadsheet/Data;->startIndex:Ljava/lang/Integer;

    .line 208
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Data insertionMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Data;->insertionMode:Lcom/google/gdata/data/spreadsheet/Data$InsertionMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " numberOfRows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Data;->numberOfRows:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " startIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Data;->startIndex:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/Data;->startIndex:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 224
    const-string v0, "startRow"

    invoke-static {v0}, Lcom/google/gdata/data/spreadsheet/Data;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 226
    :cond_0
    return-void
.end method
