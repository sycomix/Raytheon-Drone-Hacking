.class public Lcom/google/gdata/data/analytics/Metric;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Metric.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "metric"
    nsAlias = "dxp"
    nsUri = "http://schemas.google.com/analytics/2009"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/analytics/Metric$Type;
    }
.end annotation


# static fields
.field private static final CONFIDENCEINTERVAL:Ljava/lang/String; = "confidenceInterval"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static final VALUE:Ljava/lang/String; = "value"

.field static final XML_NAME:Ljava/lang/String; = "metric"


# instance fields
.field private confidenceInterval:Ljava/lang/Double;

.field private name:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Metric;->confidenceInterval:Ljava/lang/Double;

    .line 55
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Metric;->name:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Metric;->type:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Metric;->value:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "confidenceInterval"    # Ljava/lang/Double;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Metric;->confidenceInterval:Ljava/lang/Double;

    .line 55
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Metric;->name:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Metric;->type:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Metric;->value:Ljava/lang/String;

    .line 105
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/Metric;->setConfidenceInterval(Ljava/lang/Double;)V

    .line 106
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/analytics/Metric;->setName(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/analytics/Metric;->setType(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p4}, Lcom/google/gdata/data/analytics/Metric;->setValue(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/Metric;->setImmutable(Z)V

    .line 110
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 248
    const-class v1, Lcom/google/gdata/data/analytics/Metric;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 250
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 251
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 252
    return-object v0
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 4
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 266
    const-string v0, "confidenceInterval"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeDouble(Ljava/lang/String;Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/Metric;->confidenceInterval:Ljava/lang/Double;

    .line 267
    const-string v0, "name"

    invoke-virtual {p1, v0, v3}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/Metric;->name:Ljava/lang/String;

    .line 268
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/Metric;->type:Ljava/lang/String;

    .line 269
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0, v3}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/Metric;->value:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Metric;->numericValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 274
    if-ne p0, p1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v1

    .line 277
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/Metric;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 278
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 280
    check-cast v0, Lcom/google/gdata/data/analytics/Metric;

    .line 281
    .local v0, "other":Lcom/google/gdata/data/analytics/Metric;
    iget-object v3, p0, Lcom/google/gdata/data/analytics/Metric;->confidenceInterval:Ljava/lang/Double;

    iget-object v4, v0, Lcom/google/gdata/data/analytics/Metric;->confidenceInterval:Ljava/lang/Double;

    invoke-static {v3, v4}, Lcom/google/gdata/data/analytics/Metric;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/analytics/Metric;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/analytics/Metric;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/analytics/Metric;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/analytics/Metric;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/analytics/Metric;->type:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/analytics/Metric;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/analytics/Metric;->value:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/analytics/Metric;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/analytics/Metric;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getConfidenceInterval()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Metric;->confidenceInterval:Ljava/lang/Double;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Metric;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Metric;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Metric;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasConfidenceInterval()Z
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Metric;->getConfidenceInterval()Ljava/lang/Double;

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
    .line 168
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Metric;->getName()Ljava/lang/String;

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
    .line 197
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Metric;->getType()Ljava/lang/String;

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
    .line 225
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Metric;->getValue()Ljava/lang/String;

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
    .line 289
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 290
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/analytics/Metric;->confidenceInterval:Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 291
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/analytics/Metric;->confidenceInterval:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/analytics/Metric;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 294
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/analytics/Metric;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 296
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/data/analytics/Metric;->type:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 297
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/analytics/Metric;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 299
    :cond_2
    iget-object v1, p0, Lcom/google/gdata/data/analytics/Metric;->value:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 300
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/analytics/Metric;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 302
    :cond_3
    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Metric;->numericValue()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public numericValue()Ljava/lang/Number;
    .locals 4

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Metric;->getType()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "type":Ljava/lang/String;
    const-string v1, "integer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Metric;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 330
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Metric;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 257
    const-string v0, "confidenceInterval"

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Metric;->confidenceInterval:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    const-string v0, "name"

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Metric;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string/jumbo v0, "type"

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Metric;->type:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string/jumbo v0, "value"

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Metric;->value:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    return-void
.end method

.method public setConfidenceInterval(Ljava/lang/Double;)V
    .locals 0
    .param p1, "confidenceInterval"    # Ljava/lang/Double;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Metric;->throwExceptionIfImmutable()V

    .line 129
    iput-object p1, p0, Lcom/google/gdata/data/analytics/Metric;->confidenceInterval:Ljava/lang/Double;

    .line 130
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Metric;->throwExceptionIfImmutable()V

    .line 159
    iput-object p1, p0, Lcom/google/gdata/data/analytics/Metric;->name:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Metric;->throwExceptionIfImmutable()V

    .line 188
    iput-object p1, p0, Lcom/google/gdata/data/analytics/Metric;->type:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Metric;->throwExceptionIfImmutable()V

    .line 216
    iput-object p1, p0, Lcom/google/gdata/data/analytics/Metric;->value:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Metric confidenceInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Metric;->confidenceInterval:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Metric;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Metric;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Metric;->value:Ljava/lang/String;

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
    .line 230
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Metric;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 231
    const-string v0, "name"

    invoke-static {v0}, Lcom/google/gdata/data/analytics/Metric;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Metric;->value:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 234
    const-string/jumbo v0, "value"

    invoke-static {v0}, Lcom/google/gdata/data/analytics/Metric;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 236
    :cond_1
    return-void
.end method
