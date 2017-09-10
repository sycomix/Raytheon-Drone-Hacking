.class public Lcom/google/gdata/data/finance/Symbol;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Symbol.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "symbol"
    nsAlias = "gf"
    nsUri = "http://schemas.google.com/finance/2007"
.end annotation


# static fields
.field private static final EXCHANGE:Ljava/lang/String; = "exchange"

.field private static final FULLNAME:Ljava/lang/String; = "fullName"

.field private static final SYMBOL:Ljava/lang/String; = "symbol"

.field static final XML_NAME:Ljava/lang/String; = "symbol"


# instance fields
.field private exchange:Ljava/lang/String;

.field private fullName:Ljava/lang/String;

.field private symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/finance/Symbol;->exchange:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/google/gdata/data/finance/Symbol;->fullName:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/google/gdata/data/finance/Symbol;->symbol:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "exchange"    # Ljava/lang/String;
    .param p2, "fullName"    # Ljava/lang/String;
    .param p3, "symbol"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/finance/Symbol;->exchange:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/google/gdata/data/finance/Symbol;->fullName:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/google/gdata/data/finance/Symbol;->symbol:Ljava/lang/String;

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/finance/Symbol;->setExchange(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/finance/Symbol;->setFullName(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/finance/Symbol;->setSymbol(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/Symbol;->setImmutable(Z)V

    .line 77
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 189
    const-class v1, Lcom/google/gdata/data/finance/Symbol;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 191
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 192
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 193
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

    .line 206
    const-string v0, "exchange"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/Symbol;->exchange:Ljava/lang/String;

    .line 207
    const-string v0, "fullName"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/Symbol;->fullName:Ljava/lang/String;

    .line 208
    const-string v0, "symbol"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/Symbol;->symbol:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 213
    if-ne p0, p1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v1

    .line 216
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/finance/Symbol;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 217
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 219
    check-cast v0, Lcom/google/gdata/data/finance/Symbol;

    .line 220
    .local v0, "other":Lcom/google/gdata/data/finance/Symbol;
    iget-object v3, p0, Lcom/google/gdata/data/finance/Symbol;->exchange:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/finance/Symbol;->exchange:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/finance/Symbol;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/finance/Symbol;->fullName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/finance/Symbol;->fullName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/finance/Symbol;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/finance/Symbol;->symbol:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/finance/Symbol;->symbol:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/finance/Symbol;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getExchange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/gdata/data/finance/Symbol;->exchange:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/gdata/data/finance/Symbol;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/gdata/data/finance/Symbol;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public hasExchange()Z
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/Symbol;->getExchange()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFullName()Z
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/Symbol;->getFullName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSymbol()Z
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/Symbol;->getSymbol()Ljava/lang/String;

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
    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 228
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/finance/Symbol;->exchange:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 229
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/finance/Symbol;->exchange:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/finance/Symbol;->fullName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 232
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/finance/Symbol;->fullName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/data/finance/Symbol;->symbol:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 235
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/finance/Symbol;->symbol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 237
    :cond_2
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 198
    const-string v0, "exchange"

    iget-object v1, p0, Lcom/google/gdata/data/finance/Symbol;->exchange:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v0, "fullName"

    iget-object v1, p0, Lcom/google/gdata/data/finance/Symbol;->fullName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v0, "symbol"

    iget-object v1, p0, Lcom/google/gdata/data/finance/Symbol;->symbol:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method public setExchange(Ljava/lang/String;)V
    .locals 0
    .param p1, "exchange"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/Symbol;->throwExceptionIfImmutable()V

    .line 96
    iput-object p1, p0, Lcom/google/gdata/data/finance/Symbol;->exchange:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fullName"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/Symbol;->throwExceptionIfImmutable()V

    .line 125
    iput-object p1, p0, Lcom/google/gdata/data/finance/Symbol;->fullName:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setSymbol(Ljava/lang/String;)V
    .locals 0
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/Symbol;->throwExceptionIfImmutable()V

    .line 154
    iput-object p1, p0, Lcom/google/gdata/data/finance/Symbol;->symbol:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Symbol exchange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/Symbol;->exchange:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fullName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/Symbol;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " symbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/Symbol;->symbol:Ljava/lang/String;

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
    .line 168
    iget-object v0, p0, Lcom/google/gdata/data/finance/Symbol;->exchange:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 169
    const-string v0, "exchange"

    invoke-static {v0}, Lcom/google/gdata/data/finance/Symbol;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/finance/Symbol;->fullName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 172
    const-string v0, "fullName"

    invoke-static {v0}, Lcom/google/gdata/data/finance/Symbol;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/finance/Symbol;->symbol:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 175
    const-string v0, "symbol"

    invoke-static {v0}, Lcom/google/gdata/data/finance/Symbol;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 177
    :cond_2
    return-void
.end method
