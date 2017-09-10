.class public Lcom/google/gdata/data/spreadsheet/Column;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Column.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "column"
    nsAlias = "gs"
    nsUri = "http://schemas.google.com/spreadsheets/2006"
.end annotation


# static fields
.field private static final INDEX:Ljava/lang/String; = "index"

.field private static final NAME:Ljava/lang/String; = "name"

.field static final XML_NAME:Ljava/lang/String; = "column"


# instance fields
.field private index:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Column;->index:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Column;->name:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "index"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Column;->index:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Column;->name:Ljava/lang/String;

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/spreadsheet/Column;->setIndex(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/spreadsheet/Column;->setName(Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/Column;->setImmutable(Z)V

    .line 69
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 148
    const-class v1, Lcom/google/gdata/data/spreadsheet/Column;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 150
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 151
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 152
    return-object v0
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 2
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 164
    const-string v0, "index"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Column;->index:Ljava/lang/String;

    .line 165
    const-string v0, "name"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Column;->name:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    if-ne p0, p1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v1

    .line 173
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/spreadsheet/Column;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 174
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 176
    check-cast v0, Lcom/google/gdata/data/spreadsheet/Column;

    .line 177
    .local v0, "other":Lcom/google/gdata/data/spreadsheet/Column;
    iget-object v3, p0, Lcom/google/gdata/data/spreadsheet/Column;->index:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/spreadsheet/Column;->index:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/spreadsheet/Column;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/spreadsheet/Column;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/spreadsheet/Column;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/spreadsheet/Column;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/Column;->index:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/Column;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hasIndex()Z
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/Column;->getIndex()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/Column;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 184
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Column;->index:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 185
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/spreadsheet/Column;->index:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Column;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 188
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/spreadsheet/Column;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 190
    :cond_1
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 157
    const-string v0, "index"

    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Column;->index:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v0, "name"

    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Column;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-void
.end method

.method public setIndex(Ljava/lang/String;)V
    .locals 0
    .param p1, "index"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/Column;->throwExceptionIfImmutable()V

    .line 88
    iput-object p1, p0, Lcom/google/gdata/data/spreadsheet/Column;->index:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/Column;->throwExceptionIfImmutable()V

    .line 116
    iput-object p1, p0, Lcom/google/gdata/data/spreadsheet/Column;->name:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Column index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Column;->index:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Column;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 130
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/Column;->index:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 131
    const-string v0, "index"

    invoke-static {v0}, Lcom/google/gdata/data/spreadsheet/Column;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/Column;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 134
    const-string v0, "name"

    invoke-static {v0}, Lcom/google/gdata/data/spreadsheet/Column;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 136
    :cond_1
    return-void
.end method
