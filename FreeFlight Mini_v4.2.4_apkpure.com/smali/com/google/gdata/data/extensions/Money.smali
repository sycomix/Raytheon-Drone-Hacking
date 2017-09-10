.class public Lcom/google/gdata/data/extensions/Money;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Money.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "money"
    nsAlias = "gd"
    nsUri = "http://schemas.google.com/g/2005"
.end annotation


# static fields
.field private static final AMOUNT:Ljava/lang/String; = "amount"

.field private static final CURRENCYCODE:Ljava/lang/String; = "currencyCode"

.field static final XML_NAME:Ljava/lang/String; = "money"


# instance fields
.field private amount:Ljava/lang/Double;

.field private currencyCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/google/gdata/data/extensions/Money;->amount:Ljava/lang/Double;

    .line 50
    iput-object v0, p0, Lcom/google/gdata/data/extensions/Money;->currencyCode:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/String;)V
    .locals 1
    .param p1, "amount"    # Ljava/lang/Double;
    .param p2, "currencyCode"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/google/gdata/data/extensions/Money;->amount:Ljava/lang/Double;

    .line 50
    iput-object v0, p0, Lcom/google/gdata/data/extensions/Money;->currencyCode:Ljava/lang/String;

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/Money;->setAmount(Ljava/lang/Double;)V

    .line 68
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/extensions/Money;->setCurrencyCode(Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Money;->setImmutable(Z)V

    .line 70
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 148
    const-class v1, Lcom/google/gdata/data/extensions/Money;

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
    .locals 3
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 164
    const-string v0, "amount"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeDouble(Ljava/lang/String;Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/Money;->amount:Ljava/lang/Double;

    .line 165
    const-string v0, "currencyCode"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/Money;->currencyCode:Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/Money;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 174
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 176
    check-cast v0, Lcom/google/gdata/data/extensions/Money;

    .line 177
    .local v0, "other":Lcom/google/gdata/data/extensions/Money;
    iget-object v3, p0, Lcom/google/gdata/data/extensions/Money;->amount:Ljava/lang/Double;

    iget-object v4, v0, Lcom/google/gdata/data/extensions/Money;->amount:Ljava/lang/Double;

    invoke-static {v3, v4}, Lcom/google/gdata/data/extensions/Money;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/extensions/Money;->currencyCode:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/extensions/Money;->currencyCode:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/extensions/Money;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getAmount()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Money;->amount:Ljava/lang/Double;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Money;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public hasAmount()Z
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/Money;->getAmount()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCurrencyCode()Z
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/Money;->getCurrencyCode()Ljava/lang/String;

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
    iget-object v1, p0, Lcom/google/gdata/data/extensions/Money;->amount:Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 185
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Money;->amount:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/extensions/Money;->currencyCode:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 188
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Money;->currencyCode:Ljava/lang/String;

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
    const-string v0, "amount"

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Money;->amount:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    const-string v0, "currencyCode"

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Money;->currencyCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-void
.end method

.method public setAmount(Ljava/lang/Double;)V
    .locals 0
    .param p1, "amount"    # Ljava/lang/Double;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/Money;->throwExceptionIfImmutable()V

    .line 88
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Money;->amount:Ljava/lang/Double;

    .line 89
    return-void
.end method

.method public setCurrencyCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/Money;->throwExceptionIfImmutable()V

    .line 116
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Money;->currencyCode:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Money amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Money;->amount:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " currencyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Money;->currencyCode:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Money;->amount:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 131
    const-string v0, "amount"

    invoke-static {v0}, Lcom/google/gdata/data/extensions/Money;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Money;->currencyCode:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 134
    const-string v0, "currencyCode"

    invoke-static {v0}, Lcom/google/gdata/data/extensions/Money;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 136
    :cond_1
    return-void
.end method
