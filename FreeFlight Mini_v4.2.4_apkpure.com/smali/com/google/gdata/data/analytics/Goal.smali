.class public Lcom/google/gdata/data/analytics/Goal;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Goal.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "goal"
    nsAlias = "ga"
    nsUri = "http://schemas.google.com/ga/2009"
.end annotation


# static fields
.field private static final ACTIVE:Ljava/lang/String; = "active"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final NUMBER:Ljava/lang/String; = "number"

.field private static final VALUE:Ljava/lang/String; = "value"

.field static final XML_NAME:Ljava/lang/String; = "goal"


# instance fields
.field private active:Ljava/lang/Boolean;

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/Integer;

.field private value:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Goal;->active:Ljava/lang/Boolean;

    .line 56
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Goal;->name:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Goal;->number:Ljava/lang/Integer;

    .line 62
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Goal;->value:Ljava/lang/Double;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;)V
    .locals 1
    .param p1, "active"    # Ljava/lang/Boolean;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/Integer;
    .param p4, "value"    # Ljava/lang/Double;

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Goal;->active:Ljava/lang/Boolean;

    .line 56
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Goal;->name:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Goal;->number:Ljava/lang/Integer;

    .line 62
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Goal;->value:Ljava/lang/Double;

    .line 81
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/Goal;->setActive(Ljava/lang/Boolean;)V

    .line 82
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/analytics/Goal;->setName(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/analytics/Goal;->setNumber(Ljava/lang/Integer;)V

    .line 84
    invoke-virtual {p0, p4}, Lcom/google/gdata/data/analytics/Goal;->setValue(Ljava/lang/Double;)V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/Goal;->setImmutable(Z)V

    .line 86
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 299
    const-class v1, Lcom/google/gdata/data/analytics/Goal;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 301
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 302
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 303
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

    .line 317
    const-string v0, "active"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/Goal;->active:Ljava/lang/Boolean;

    .line 318
    const-string v0, "name"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/Goal;->name:Ljava/lang/String;

    .line 319
    const-string v0, "number"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/Goal;->number:Ljava/lang/Integer;

    .line 320
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeDouble(Ljava/lang/String;Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/Goal;->value:Ljava/lang/Double;

    .line 321
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 90
    const-class v0, Lcom/google/gdata/data/analytics/Goal;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    const-class v0, Lcom/google/gdata/data/analytics/Goal;

    const-class v1, Lcom/google/gdata/data/analytics/Destination;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 94
    new-instance v0, Lcom/google/gdata/data/analytics/Destination;

    invoke-direct {v0}, Lcom/google/gdata/data/analytics/Destination;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/analytics/Destination;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 95
    const-class v0, Lcom/google/gdata/data/analytics/Goal;

    const-class v1, Lcom/google/gdata/data/analytics/Engagement;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getActive()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Goal;->active:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDestination()Lcom/google/gdata/data/analytics/Destination;
    .locals 1

    .prologue
    .line 133
    const-class v0, Lcom/google/gdata/data/analytics/Destination;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/Goal;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/Destination;

    return-object v0
.end method

.method public getEngagement()Lcom/google/gdata/data/analytics/Engagement;
    .locals 1

    .prologue
    .line 164
    const-class v0, Lcom/google/gdata/data/analytics/Engagement;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/Goal;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/Engagement;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Goal;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Goal;->number:Ljava/lang/Integer;

    return-object v0
.end method

.method public getValue()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Goal;->value:Ljava/lang/Double;

    return-object v0
.end method

.method public hasActive()Z
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Goal;->getActive()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDestination()Z
    .locals 1

    .prologue
    .line 155
    const-class v0, Lcom/google/gdata/data/analytics/Destination;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/Goal;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasEngagement()Z
    .locals 1

    .prologue
    .line 186
    const-class v0, Lcom/google/gdata/data/analytics/Engagement;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/Goal;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Goal;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumber()Z
    .locals 1

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Goal;->getNumber()Ljava/lang/Integer;

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
    .line 270
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Goal;->getValue()Ljava/lang/Double;

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
    .line 308
    const-string v0, "active"

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Goal;->active:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    const-string v0, "name"

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Goal;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v0, "number"

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Goal;->number:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    const-string/jumbo v0, "value"

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Goal;->value:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    return-void
.end method

.method public setActive(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "active"    # Ljava/lang/Boolean;

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Goal;->throwExceptionIfImmutable()V

    .line 115
    iput-object p1, p0, Lcom/google/gdata/data/analytics/Goal;->active:Ljava/lang/Boolean;

    .line 116
    return-void
.end method

.method public setDestination(Lcom/google/gdata/data/analytics/Destination;)V
    .locals 1
    .param p1, "destination"    # Lcom/google/gdata/data/analytics/Destination;

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    const-class v0, Lcom/google/gdata/data/analytics/Destination;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/Goal;->removeExtension(Ljava/lang/Class;)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/Goal;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setEngagement(Lcom/google/gdata/data/analytics/Engagement;)V
    .locals 1
    .param p1, "engagement"    # Lcom/google/gdata/data/analytics/Engagement;

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 174
    const-class v0, Lcom/google/gdata/data/analytics/Engagement;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/Goal;->removeExtension(Ljava/lang/Class;)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/Goal;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Goal;->throwExceptionIfImmutable()V

    .line 205
    iput-object p1, p0, Lcom/google/gdata/data/analytics/Goal;->name:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setNumber(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/Integer;

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Goal;->throwExceptionIfImmutable()V

    .line 233
    iput-object p1, p0, Lcom/google/gdata/data/analytics/Goal;->number:Ljava/lang/Integer;

    .line 234
    return-void
.end method

.method public setValue(Ljava/lang/Double;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Double;

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Goal;->throwExceptionIfImmutable()V

    .line 261
    iput-object p1, p0, Lcom/google/gdata/data/analytics/Goal;->value:Ljava/lang/Double;

    .line 262
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Goal active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Goal;->active:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Goal;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Goal;->number:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Goal;->value:Ljava/lang/Double;

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
    .line 275
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Goal;->active:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 276
    const-string v0, "active"

    invoke-static {v0}, Lcom/google/gdata/data/analytics/Goal;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Goal;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 279
    const-string v0, "name"

    invoke-static {v0}, Lcom/google/gdata/data/analytics/Goal;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Goal;->number:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 282
    const-string v0, "number"

    invoke-static {v0}, Lcom/google/gdata/data/analytics/Goal;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Goal;->value:Ljava/lang/Double;

    if-nez v0, :cond_3

    .line 285
    const-string/jumbo v0, "value"

    invoke-static {v0}, Lcom/google/gdata/data/analytics/Goal;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 287
    :cond_3
    return-void
.end method
