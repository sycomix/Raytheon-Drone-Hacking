.class public Lcom/google/gdata/data/spreadsheet/Field;
.super Lcom/google/gdata/data/AbstractExtension;
.source "Field.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "field"
    nsAlias = "gs"
    nsUri = "http://schemas.google.com/spreadsheets/2006"
.end annotation


# static fields
.field private static final INDEX:Ljava/lang/String; = "index"

.field private static final NAME:Ljava/lang/String; = "name"

.field static final XML_NAME:Ljava/lang/String; = "field"


# instance fields
.field private index:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Field;->index:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Field;->name:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Field;->value:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "index"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Field;->index:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Field;->name:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Field;->value:Ljava/lang/String;

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/spreadsheet/Field;->setIndex(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/spreadsheet/Field;->setName(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/spreadsheet/Field;->setValue(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/Field;->setImmutable(Z)V

    .line 74
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 178
    const-class v1, Lcom/google/gdata/data/spreadsheet/Field;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 180
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 181
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 182
    return-object v0
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 3
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 195
    const-string v0, "index"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Field;->index:Ljava/lang/String;

    .line 196
    const-string v0, "name"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Field;->name:Ljava/lang/String;

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/spreadsheet/Field;->value:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    if-ne p0, p1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v1

    .line 205
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/spreadsheet/Field;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 206
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 208
    check-cast v0, Lcom/google/gdata/data/spreadsheet/Field;

    .line 209
    .local v0, "other":Lcom/google/gdata/data/spreadsheet/Field;
    iget-object v3, p0, Lcom/google/gdata/data/spreadsheet/Field;->index:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/spreadsheet/Field;->index:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/spreadsheet/Field;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/spreadsheet/Field;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/spreadsheet/Field;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/spreadsheet/Field;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/spreadsheet/Field;->value:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/spreadsheet/Field;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/spreadsheet/Field;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/Field;->index:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/Field;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/Field;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasIndex()Z
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/Field;->getIndex()Ljava/lang/String;

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
    .line 130
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/Field;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/Field;->getValue()Ljava/lang/String;

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
    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 217
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Field;->index:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 218
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/spreadsheet/Field;->index:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Field;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 221
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/spreadsheet/Field;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Field;->value:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 224
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/spreadsheet/Field;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 226
    :cond_2
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 187
    const-string v0, "index"

    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Field;->index:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v0, "name"

    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Field;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/Field;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public setIndex(Ljava/lang/String;)V
    .locals 0
    .param p1, "index"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/Field;->throwExceptionIfImmutable()V

    .line 93
    iput-object p1, p0, Lcom/google/gdata/data/spreadsheet/Field;->index:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/Field;->throwExceptionIfImmutable()V

    .line 121
    iput-object p1, p0, Lcom/google/gdata/data/spreadsheet/Field;->name:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/Field;->throwExceptionIfImmutable()V

    .line 149
    iput-object p1, p0, Lcom/google/gdata/data/spreadsheet/Field;->value:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Field index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Field;->index:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Field;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/Field;->value:Ljava/lang/String;

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
    .line 163
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/Field;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 164
    const-string v0, "name"

    invoke-static {v0}, Lcom/google/gdata/data/spreadsheet/Field;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 166
    :cond_0
    return-void
.end method
