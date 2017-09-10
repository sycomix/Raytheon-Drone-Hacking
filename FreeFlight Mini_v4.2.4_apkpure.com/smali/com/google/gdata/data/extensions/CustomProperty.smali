.class public Lcom/google/gdata/data/extensions/CustomProperty;
.super Lcom/google/gdata/data/AbstractExtension;
.source "CustomProperty.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "customProperty"
    nsAlias = "gd"
    nsUri = "http://schemas.google.com/g/2005"
.end annotation


# static fields
.field private static final NAME:Ljava/lang/String; = "name"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final UNIT:Ljava/lang/String; = "unit"

.field static final XML_NAME:Ljava/lang/String; = "customProperty"


# instance fields
.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private unit:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/google/gdata/data/extensions/CustomProperty;->name:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/google/gdata/data/extensions/CustomProperty;->type:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/google/gdata/data/extensions/CustomProperty;->unit:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/google/gdata/data/extensions/CustomProperty;->value:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "unit"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/google/gdata/data/extensions/CustomProperty;->name:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/google/gdata/data/extensions/CustomProperty;->type:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/google/gdata/data/extensions/CustomProperty;->unit:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/google/gdata/data/extensions/CustomProperty;->value:Ljava/lang/String;

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/CustomProperty;->setName(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/extensions/CustomProperty;->setType(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/extensions/CustomProperty;->setUnit(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p4}, Lcom/google/gdata/data/extensions/CustomProperty;->setValue(Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/CustomProperty;->setImmutable(Z)V

    .line 85
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 230
    const-class v1, Lcom/google/gdata/data/extensions/CustomProperty;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 232
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 233
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 234
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
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 248
    const-string v0, "name"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/CustomProperty;->name:Ljava/lang/String;

    .line 249
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/CustomProperty;->type:Ljava/lang/String;

    .line 250
    const-string/jumbo v0, "unit"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/CustomProperty;->unit:Ljava/lang/String;

    .line 251
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/CustomProperty;->value:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 256
    if-ne p0, p1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v1

    .line 259
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/CustomProperty;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 260
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 262
    check-cast v0, Lcom/google/gdata/data/extensions/CustomProperty;

    .line 263
    .local v0, "other":Lcom/google/gdata/data/extensions/CustomProperty;
    iget-object v3, p0, Lcom/google/gdata/data/extensions/CustomProperty;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/extensions/CustomProperty;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/extensions/CustomProperty;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/extensions/CustomProperty;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/extensions/CustomProperty;->type:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/extensions/CustomProperty;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/extensions/CustomProperty;->unit:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/extensions/CustomProperty;->unit:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/extensions/CustomProperty;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/extensions/CustomProperty;->value:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/extensions/CustomProperty;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/extensions/CustomProperty;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/gdata/data/extensions/CustomProperty;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/gdata/data/extensions/CustomProperty;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/gdata/data/extensions/CustomProperty;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/gdata/data/extensions/CustomProperty;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/CustomProperty;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUnit()Z
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/CustomProperty;->getUnit()Ljava/lang/String;

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
    .line 207
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/CustomProperty;->getValue()Ljava/lang/String;

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
    .line 271
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 272
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/extensions/CustomProperty;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 273
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/extensions/CustomProperty;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/extensions/CustomProperty;->type:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 276
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/extensions/CustomProperty;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/data/extensions/CustomProperty;->unit:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 279
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/extensions/CustomProperty;->unit:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 281
    :cond_2
    iget-object v1, p0, Lcom/google/gdata/data/extensions/CustomProperty;->value:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 282
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/extensions/CustomProperty;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 284
    :cond_3
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 239
    const-string v0, "name"

    iget-object v1, p0, Lcom/google/gdata/data/extensions/CustomProperty;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string/jumbo v0, "type"

    iget-object v1, p0, Lcom/google/gdata/data/extensions/CustomProperty;->type:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string/jumbo v0, "unit"

    iget-object v1, p0, Lcom/google/gdata/data/extensions/CustomProperty;->unit:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Lcom/google/gdata/data/extensions/CustomProperty;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/CustomProperty;->throwExceptionIfImmutable()V

    .line 104
    iput-object p1, p0, Lcom/google/gdata/data/extensions/CustomProperty;->name:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/CustomProperty;->throwExceptionIfImmutable()V

    .line 136
    iput-object p1, p0, Lcom/google/gdata/data/extensions/CustomProperty;->type:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/CustomProperty;->throwExceptionIfImmutable()V

    .line 168
    iput-object p1, p0, Lcom/google/gdata/data/extensions/CustomProperty;->unit:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/CustomProperty;->throwExceptionIfImmutable()V

    .line 198
    iput-object p1, p0, Lcom/google/gdata/data/extensions/CustomProperty;->value:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{CustomProperty name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/CustomProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/CustomProperty;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " unit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/CustomProperty;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/CustomProperty;->value:Ljava/lang/String;

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
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/gdata/data/extensions/CustomProperty;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 213
    const-string v0, "name"

    invoke-static {v0}, Lcom/google/gdata/data/extensions/CustomProperty;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/extensions/CustomProperty;->value:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing text content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_1
    return-void
.end method
