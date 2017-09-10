.class public Lcom/google/gdata/data/analytics/Engagement;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Engagement.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "engagement"
    nsAlias = "ga"
    nsUri = "http://schemas.google.com/ga/2009"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/analytics/Engagement$Type;,
        Lcom/google/gdata/data/analytics/Engagement$Comparison;
    }
.end annotation


# static fields
.field private static final COMPARISON:Ljava/lang/String; = "comparison"

.field private static final THRESHOLDVALUE:Ljava/lang/String; = "thresholdValue"

.field private static final TYPE:Ljava/lang/String; = "type"

.field static final XML_NAME:Ljava/lang/String; = "engagement"


# instance fields
.field private comparison:Ljava/lang/String;

.field private thresholdValue:Ljava/lang/Long;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Engagement;->comparison:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Engagement;->thresholdValue:Ljava/lang/Long;

    .line 55
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Engagement;->type:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1
    .param p1, "comparison"    # Ljava/lang/String;
    .param p2, "thresholdValue"    # Ljava/lang/Long;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Engagement;->comparison:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Engagement;->thresholdValue:Ljava/lang/Long;

    .line 55
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Engagement;->type:Ljava/lang/String;

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/Engagement;->setComparison(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/analytics/Engagement;->setThresholdValue(Ljava/lang/Long;)V

    .line 100
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/analytics/Engagement;->setType(Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/Engagement;->setImmutable(Z)V

    .line 102
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 212
    const-class v1, Lcom/google/gdata/data/analytics/Engagement;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 214
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 215
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 216
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

    .line 229
    const-string v0, "comparison"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/Engagement;->comparison:Ljava/lang/String;

    .line 230
    const-string/jumbo v0, "thresholdValue"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeLong(Ljava/lang/String;Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/Engagement;->thresholdValue:Ljava/lang/Long;

    .line 231
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/Engagement;->type:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 236
    if-ne p0, p1, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v1

    .line 239
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/Engagement;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 240
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 242
    check-cast v0, Lcom/google/gdata/data/analytics/Engagement;

    .line 243
    .local v0, "other":Lcom/google/gdata/data/analytics/Engagement;
    iget-object v3, p0, Lcom/google/gdata/data/analytics/Engagement;->comparison:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/analytics/Engagement;->comparison:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/analytics/Engagement;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/analytics/Engagement;->thresholdValue:Ljava/lang/Long;

    iget-object v4, v0, Lcom/google/gdata/data/analytics/Engagement;->thresholdValue:Ljava/lang/Long;

    invoke-static {v3, v4}, Lcom/google/gdata/data/analytics/Engagement;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/analytics/Engagement;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/analytics/Engagement;->type:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/analytics/Engagement;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getComparison()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Engagement;->comparison:Ljava/lang/String;

    return-object v0
.end method

.method public getThresholdValue()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Engagement;->thresholdValue:Ljava/lang/Long;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Engagement;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hasComparison()Z
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Engagement;->getComparison()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasThresholdValue()Z
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Engagement;->getThresholdValue()Ljava/lang/Long;

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
    .line 186
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Engagement;->getType()Ljava/lang/String;

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
    .line 250
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 251
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/analytics/Engagement;->comparison:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 252
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/analytics/Engagement;->comparison:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/analytics/Engagement;->thresholdValue:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 255
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/analytics/Engagement;->thresholdValue:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/data/analytics/Engagement;->type:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 258
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/analytics/Engagement;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 260
    :cond_2
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 221
    const-string v0, "comparison"

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Engagement;->comparison:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string/jumbo v0, "thresholdValue"

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Engagement;->thresholdValue:Ljava/lang/Long;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    const-string/jumbo v0, "type"

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Engagement;->type:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void
.end method

.method public setComparison(Ljava/lang/String;)V
    .locals 0
    .param p1, "comparison"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Engagement;->throwExceptionIfImmutable()V

    .line 121
    iput-object p1, p0, Lcom/google/gdata/data/analytics/Engagement;->comparison:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setThresholdValue(Ljava/lang/Long;)V
    .locals 0
    .param p1, "thresholdValue"    # Ljava/lang/Long;

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Engagement;->throwExceptionIfImmutable()V

    .line 149
    iput-object p1, p0, Lcom/google/gdata/data/analytics/Engagement;->thresholdValue:Ljava/lang/Long;

    .line 150
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Engagement;->throwExceptionIfImmutable()V

    .line 177
    iput-object p1, p0, Lcom/google/gdata/data/analytics/Engagement;->type:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Engagement comparison="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Engagement;->comparison:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " thresholdValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Engagement;->thresholdValue:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Engagement;->type:Ljava/lang/String;

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
    .line 191
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Engagement;->comparison:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 192
    const-string v0, "comparison"

    invoke-static {v0}, Lcom/google/gdata/data/analytics/Engagement;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Engagement;->thresholdValue:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 195
    const-string/jumbo v0, "thresholdValue"

    invoke-static {v0}, Lcom/google/gdata/data/analytics/Engagement;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Engagement;->type:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 198
    const-string/jumbo v0, "type"

    invoke-static {v0}, Lcom/google/gdata/data/analytics/Engagement;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 200
    :cond_2
    return-void
.end method
