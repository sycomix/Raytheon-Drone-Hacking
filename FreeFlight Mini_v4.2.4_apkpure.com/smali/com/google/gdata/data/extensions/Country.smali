.class public Lcom/google/gdata/data/extensions/Country;
.super Lcom/google/gdata/data/AbstractExtension;
.source "Country.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "country"
    nsAlias = "gd"
    nsUri = "http://schemas.google.com/g/2005"
.end annotation


# static fields
.field private static final CODE:Ljava/lang/String; = "code"

.field static final XML_NAME:Ljava/lang/String; = "country"


# instance fields
.field private code:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/google/gdata/data/extensions/Country;->code:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/google/gdata/data/extensions/Country;->value:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/google/gdata/data/extensions/Country;->code:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/google/gdata/data/extensions/Country;->value:Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/Country;->setCode(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/extensions/Country;->setValue(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Country;->setImmutable(Z)V

    .line 67
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 139
    const-class v1, Lcom/google/gdata/data/extensions/Country;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 141
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 142
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 143
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
    const/4 v1, 0x0

    .line 155
    const-string v0, "code"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/Country;->code:Ljava/lang/String;

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/Country;->value:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161
    if-ne p0, p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v1

    .line 164
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/Country;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 165
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 167
    check-cast v0, Lcom/google/gdata/data/extensions/Country;

    .line 168
    .local v0, "other":Lcom/google/gdata/data/extensions/Country;
    iget-object v3, p0, Lcom/google/gdata/data/extensions/Country;->code:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/extensions/Country;->code:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/extensions/Country;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/extensions/Country;->value:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/extensions/Country;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/extensions/Country;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Country;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Country;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasCode()Z
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/Country;->getCode()Ljava/lang/String;

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
    .line 122
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/Country;->getValue()Ljava/lang/String;

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
    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 175
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/extensions/Country;->code:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 176
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Country;->code:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/extensions/Country;->value:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 179
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Country;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 181
    :cond_1
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 148
    const-string v0, "code"

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Country;->code:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Country;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/Country;->throwExceptionIfImmutable()V

    .line 85
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Country;->code:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/Country;->throwExceptionIfImmutable()V

    .line 113
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Country;->value:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Country code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Country;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Country;->value:Ljava/lang/String;

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
    .locals 0

    .prologue
    .line 127
    return-void
.end method
