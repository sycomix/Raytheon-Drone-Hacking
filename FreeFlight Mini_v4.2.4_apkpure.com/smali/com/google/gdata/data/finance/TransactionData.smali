.class public Lcom/google/gdata/data/finance/TransactionData;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "TransactionData.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "transactionData"
    nsAlias = "gf"
    nsUri = "http://schemas.google.com/finance/2007"
.end annotation


# static fields
.field private static final DATE:Ljava/lang/String; = "date"

.field private static final NOTES:Ljava/lang/String; = "notes"

.field private static final SHARES:Ljava/lang/String; = "shares"

.field private static final TYPE:Ljava/lang/String; = "type"

.field static final XML_NAME:Ljava/lang/String; = "transactionData"


# instance fields
.field private date:Lcom/google/gdata/data/DateTime;

.field private notes:Ljava/lang/String;

.field private shares:Ljava/lang/Double;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/google/gdata/data/finance/TransactionData;->date:Lcom/google/gdata/data/DateTime;

    .line 57
    iput-object v0, p0, Lcom/google/gdata/data/finance/TransactionData;->notes:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/google/gdata/data/finance/TransactionData;->shares:Ljava/lang/Double;

    .line 64
    iput-object v0, p0, Lcom/google/gdata/data/finance/TransactionData;->type:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/DateTime;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 1
    .param p1, "date"    # Lcom/google/gdata/data/DateTime;
    .param p2, "notes"    # Ljava/lang/String;
    .param p3, "shares"    # Ljava/lang/Double;
    .param p4, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/google/gdata/data/finance/TransactionData;->date:Lcom/google/gdata/data/DateTime;

    .line 57
    iput-object v0, p0, Lcom/google/gdata/data/finance/TransactionData;->notes:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/google/gdata/data/finance/TransactionData;->shares:Ljava/lang/Double;

    .line 64
    iput-object v0, p0, Lcom/google/gdata/data/finance/TransactionData;->type:Ljava/lang/String;

    .line 85
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/finance/TransactionData;->setDate(Lcom/google/gdata/data/DateTime;)V

    .line 86
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/finance/TransactionData;->setNotes(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/finance/TransactionData;->setShares(Ljava/lang/Double;)V

    .line 88
    invoke-virtual {p0, p4}, Lcom/google/gdata/data/finance/TransactionData;->setType(Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/TransactionData;->setImmutable(Z)V

    .line 90
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 303
    const-class v1, Lcom/google/gdata/data/finance/TransactionData;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 305
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 306
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 307
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

    .line 321
    const-string v0, "date"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeDateTime(Ljava/lang/String;Z)Lcom/google/gdata/data/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/TransactionData;->date:Lcom/google/gdata/data/DateTime;

    .line 322
    const-string v0, "notes"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/TransactionData;->notes:Ljava/lang/String;

    .line 323
    const-string v0, "shares"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeDouble(Ljava/lang/String;Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/TransactionData;->shares:Ljava/lang/Double;

    .line 324
    const-string/jumbo v0, "type"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/TransactionData;->type:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 94
    const-class v0, Lcom/google/gdata/data/finance/TransactionData;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 97
    :cond_0
    const-class v0, Lcom/google/gdata/data/finance/TransactionData;

    const-class v1, Lcom/google/gdata/data/finance/Commission;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 98
    new-instance v0, Lcom/google/gdata/data/finance/Commission;

    invoke-direct {v0}, Lcom/google/gdata/data/finance/Commission;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/finance/Commission;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 99
    const-class v0, Lcom/google/gdata/data/finance/TransactionData;

    const-class v1, Lcom/google/gdata/data/finance/Price;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 100
    new-instance v0, Lcom/google/gdata/data/finance/Price;

    invoke-direct {v0}, Lcom/google/gdata/data/finance/Price;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/finance/Price;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_0
.end method

.method public getCommission()Lcom/google/gdata/data/finance/Commission;
    .locals 1

    .prologue
    .line 109
    const-class v0, Lcom/google/gdata/data/finance/Commission;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/TransactionData;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/finance/Commission;

    return-object v0
.end method

.method public getDate()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/gdata/data/finance/TransactionData;->date:Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public getNotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/gdata/data/finance/TransactionData;->notes:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Lcom/google/gdata/data/finance/Price;
    .locals 1

    .prologue
    .line 198
    const-class v0, Lcom/google/gdata/data/finance/Price;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/TransactionData;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/finance/Price;

    return-object v0
.end method

.method public getShares()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/gdata/data/finance/TransactionData;->shares:Ljava/lang/Double;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/gdata/data/finance/TransactionData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hasCommission()Z
    .locals 1

    .prologue
    .line 132
    const-class v0, Lcom/google/gdata/data/finance/Commission;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/TransactionData;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasDate()Z
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/TransactionData;->getDate()Lcom/google/gdata/data/DateTime;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNotes()Z
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/TransactionData;->getNotes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrice()Z
    .locals 1

    .prologue
    .line 220
    const-class v0, Lcom/google/gdata/data/finance/Price;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/TransactionData;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasShares()Z
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/TransactionData;->getShares()Ljava/lang/Double;

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
    .line 283
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/TransactionData;->getType()Ljava/lang/String;

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
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 312
    const-string v0, "date"

    iget-object v1, p0, Lcom/google/gdata/data/finance/TransactionData;->date:Lcom/google/gdata/data/DateTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    const-string v0, "notes"

    iget-object v1, p0, Lcom/google/gdata/data/finance/TransactionData;->notes:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v0, "shares"

    iget-object v1, p0, Lcom/google/gdata/data/finance/TransactionData;->shares:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    const-string/jumbo v0, "type"

    iget-object v1, p0, Lcom/google/gdata/data/finance/TransactionData;->type:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    return-void
.end method

.method public setCommission(Lcom/google/gdata/data/finance/Commission;)V
    .locals 1
    .param p1, "commission"    # Lcom/google/gdata/data/finance/Commission;

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    const-class v0, Lcom/google/gdata/data/finance/Commission;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/TransactionData;->removeExtension(Ljava/lang/Class;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/finance/TransactionData;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setDate(Lcom/google/gdata/data/DateTime;)V
    .locals 0
    .param p1, "date"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/TransactionData;->throwExceptionIfImmutable()V

    .line 152
    iput-object p1, p0, Lcom/google/gdata/data/finance/TransactionData;->date:Lcom/google/gdata/data/DateTime;

    .line 153
    return-void
.end method

.method public setNotes(Ljava/lang/String;)V
    .locals 0
    .param p1, "notes"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/TransactionData;->throwExceptionIfImmutable()V

    .line 180
    iput-object p1, p0, Lcom/google/gdata/data/finance/TransactionData;->notes:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setPrice(Lcom/google/gdata/data/finance/Price;)V
    .locals 1
    .param p1, "price"    # Lcom/google/gdata/data/finance/Price;

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    const-class v0, Lcom/google/gdata/data/finance/Price;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/TransactionData;->removeExtension(Ljava/lang/Class;)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/finance/TransactionData;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setShares(Ljava/lang/Double;)V
    .locals 0
    .param p1, "shares"    # Ljava/lang/Double;

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/TransactionData;->throwExceptionIfImmutable()V

    .line 240
    iput-object p1, p0, Lcom/google/gdata/data/finance/TransactionData;->shares:Ljava/lang/Double;

    .line 241
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/TransactionData;->throwExceptionIfImmutable()V

    .line 272
    iput-object p1, p0, Lcom/google/gdata/data/finance/TransactionData;->type:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{TransactionData date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/TransactionData;->date:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " notes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/TransactionData;->notes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shares="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/TransactionData;->shares:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/TransactionData;->type:Ljava/lang/String;

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
    .line 288
    iget-object v0, p0, Lcom/google/gdata/data/finance/TransactionData;->type:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 289
    const-string/jumbo v0, "type"

    invoke-static {v0}, Lcom/google/gdata/data/finance/TransactionData;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 291
    :cond_0
    return-void
.end method
