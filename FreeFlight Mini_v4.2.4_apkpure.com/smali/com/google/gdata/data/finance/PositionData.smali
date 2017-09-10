.class public Lcom/google/gdata/data/finance/PositionData;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "PositionData.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "positionData"
    nsAlias = "gf"
    nsUri = "http://schemas.google.com/finance/2007"
.end annotation


# static fields
.field private static final GAINPERCENTAGE:Ljava/lang/String; = "gainPercentage"

.field private static final RETURN1W:Ljava/lang/String; = "return1w"

.field private static final RETURN1Y:Ljava/lang/String; = "return1y"

.field private static final RETURN3M:Ljava/lang/String; = "return3m"

.field private static final RETURN3Y:Ljava/lang/String; = "return3y"

.field private static final RETURN4W:Ljava/lang/String; = "return4w"

.field private static final RETURN5Y:Ljava/lang/String; = "return5y"

.field private static final RETURNOVERALL:Ljava/lang/String; = "returnOverall"

.field private static final RETURNYTD:Ljava/lang/String; = "returnYTD"

.field private static final SHARES:Ljava/lang/String; = "shares"

.field static final XML_NAME:Ljava/lang/String; = "positionData"


# instance fields
.field private gainPercentage:Ljava/lang/Double;

.field private return1w:Ljava/lang/Double;

.field private return1y:Ljava/lang/Double;

.field private return3m:Ljava/lang/Double;

.field private return3y:Ljava/lang/Double;

.field private return4w:Ljava/lang/Double;

.field private return5y:Ljava/lang/Double;

.field private returnOverall:Ljava/lang/Double;

.field private returnYTD:Ljava/lang/Double;

.field private shares:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->gainPercentage:Ljava/lang/Double;

    .line 74
    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->return1w:Ljava/lang/Double;

    .line 77
    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->return1y:Ljava/lang/Double;

    .line 80
    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->return3m:Ljava/lang/Double;

    .line 83
    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->return3y:Ljava/lang/Double;

    .line 86
    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->return4w:Ljava/lang/Double;

    .line 89
    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->return5y:Ljava/lang/Double;

    .line 92
    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->returnOverall:Ljava/lang/Double;

    .line 95
    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->returnYTD:Ljava/lang/Double;

    .line 98
    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->shares:Ljava/lang/Double;

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 1
    .param p1, "gainPercentage"    # Ljava/lang/Double;
    .param p2, "return1w"    # Ljava/lang/Double;
    .param p3, "return1y"    # Ljava/lang/Double;
    .param p4, "return3m"    # Ljava/lang/Double;
    .param p5, "return3y"    # Ljava/lang/Double;
    .param p6, "return4w"    # Ljava/lang/Double;
    .param p7, "return5y"    # Ljava/lang/Double;
    .param p8, "returnOverall"    # Ljava/lang/Double;
    .param p9, "returnYTD"    # Ljava/lang/Double;
    .param p10, "shares"    # Ljava/lang/Double;

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->gainPercentage:Ljava/lang/Double;

    .line 74
    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->return1w:Ljava/lang/Double;

    .line 77
    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->return1y:Ljava/lang/Double;

    .line 80
    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->return3m:Ljava/lang/Double;

    .line 83
    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->return3y:Ljava/lang/Double;

    .line 86
    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->return4w:Ljava/lang/Double;

    .line 89
    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->return5y:Ljava/lang/Double;

    .line 92
    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->returnOverall:Ljava/lang/Double;

    .line 95
    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->returnYTD:Ljava/lang/Double;

    .line 98
    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->shares:Ljava/lang/Double;

    .line 125
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/finance/PositionData;->setGainPercentage(Ljava/lang/Double;)V

    .line 126
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/finance/PositionData;->setReturn1w(Ljava/lang/Double;)V

    .line 127
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/finance/PositionData;->setReturn1y(Ljava/lang/Double;)V

    .line 128
    invoke-virtual {p0, p4}, Lcom/google/gdata/data/finance/PositionData;->setReturn3m(Ljava/lang/Double;)V

    .line 129
    invoke-virtual {p0, p5}, Lcom/google/gdata/data/finance/PositionData;->setReturn3y(Ljava/lang/Double;)V

    .line 130
    invoke-virtual {p0, p6}, Lcom/google/gdata/data/finance/PositionData;->setReturn4w(Ljava/lang/Double;)V

    .line 131
    invoke-virtual {p0, p7}, Lcom/google/gdata/data/finance/PositionData;->setReturn5y(Ljava/lang/Double;)V

    .line 132
    invoke-virtual {p0, p8}, Lcom/google/gdata/data/finance/PositionData;->setReturnOverall(Ljava/lang/Double;)V

    .line 133
    invoke-virtual {p0, p9}, Lcom/google/gdata/data/finance/PositionData;->setReturnYTD(Ljava/lang/Double;)V

    .line 134
    invoke-virtual {p0, p10}, Lcom/google/gdata/data/finance/PositionData;->setShares(Ljava/lang/Double;)V

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PositionData;->setImmutable(Z)V

    .line 136
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 601
    const-class v1, Lcom/google/gdata/data/finance/PositionData;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 603
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 604
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 605
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

    .line 625
    const-string v0, "gainPercentage"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeDouble(Ljava/lang/String;Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->gainPercentage:Ljava/lang/Double;

    .line 626
    const-string v0, "return1w"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeDouble(Ljava/lang/String;Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->return1w:Ljava/lang/Double;

    .line 627
    const-string v0, "return1y"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeDouble(Ljava/lang/String;Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->return1y:Ljava/lang/Double;

    .line 628
    const-string v0, "return3m"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeDouble(Ljava/lang/String;Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->return3m:Ljava/lang/Double;

    .line 629
    const-string v0, "return3y"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeDouble(Ljava/lang/String;Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->return3y:Ljava/lang/Double;

    .line 630
    const-string v0, "return4w"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeDouble(Ljava/lang/String;Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->return4w:Ljava/lang/Double;

    .line 631
    const-string v0, "return5y"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeDouble(Ljava/lang/String;Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->return5y:Ljava/lang/Double;

    .line 632
    const-string v0, "returnOverall"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeDouble(Ljava/lang/String;Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->returnOverall:Ljava/lang/Double;

    .line 633
    const-string v0, "returnYTD"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeDouble(Ljava/lang/String;Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->returnYTD:Ljava/lang/Double;

    .line 634
    const-string v0, "shares"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeDouble(Ljava/lang/String;Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->shares:Ljava/lang/Double;

    .line 635
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 140
    const-class v0, Lcom/google/gdata/data/finance/PositionData;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 143
    :cond_0
    const-class v0, Lcom/google/gdata/data/finance/PositionData;

    const-class v1, Lcom/google/gdata/data/finance/CostBasis;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 144
    new-instance v0, Lcom/google/gdata/data/finance/CostBasis;

    invoke-direct {v0}, Lcom/google/gdata/data/finance/CostBasis;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/finance/CostBasis;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 145
    const-class v0, Lcom/google/gdata/data/finance/PositionData;

    const-class v1, Lcom/google/gdata/data/finance/DaysGain;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 146
    new-instance v0, Lcom/google/gdata/data/finance/DaysGain;

    invoke-direct {v0}, Lcom/google/gdata/data/finance/DaysGain;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/finance/DaysGain;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 147
    const-class v0, Lcom/google/gdata/data/finance/PositionData;

    const-class v1, Lcom/google/gdata/data/finance/Gain;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 148
    new-instance v0, Lcom/google/gdata/data/finance/Gain;

    invoke-direct {v0}, Lcom/google/gdata/data/finance/Gain;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/finance/Gain;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 149
    const-class v0, Lcom/google/gdata/data/finance/PositionData;

    const-class v1, Lcom/google/gdata/data/finance/MarketValue;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 150
    new-instance v0, Lcom/google/gdata/data/finance/MarketValue;

    invoke-direct {v0}, Lcom/google/gdata/data/finance/MarketValue;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/finance/MarketValue;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_0
.end method

.method public getCostBasis()Lcom/google/gdata/data/finance/CostBasis;
    .locals 1

    .prologue
    .line 161
    const-class v0, Lcom/google/gdata/data/finance/CostBasis;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PositionData;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/finance/CostBasis;

    return-object v0
.end method

.method public getDaysGain()Lcom/google/gdata/data/finance/DaysGain;
    .locals 1

    .prologue
    .line 199
    const-class v0, Lcom/google/gdata/data/finance/DaysGain;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PositionData;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/finance/DaysGain;

    return-object v0
.end method

.method public getGain()Lcom/google/gdata/data/finance/Gain;
    .locals 1

    .prologue
    .line 237
    const-class v0, Lcom/google/gdata/data/finance/Gain;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PositionData;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/finance/Gain;

    return-object v0
.end method

.method public getGainPercentage()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->gainPercentage:Ljava/lang/Double;

    return-object v0
.end method

.method public getMarketValue()Lcom/google/gdata/data/finance/MarketValue;
    .locals 1

    .prologue
    .line 302
    const-class v0, Lcom/google/gdata/data/finance/MarketValue;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PositionData;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/finance/MarketValue;

    return-object v0
.end method

.method public getReturn1w()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->return1w:Ljava/lang/Double;

    return-object v0
.end method

.method public getReturn1y()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->return1y:Ljava/lang/Double;

    return-object v0
.end method

.method public getReturn3m()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->return3m:Ljava/lang/Double;

    return-object v0
.end method

.method public getReturn3y()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->return3y:Ljava/lang/Double;

    return-object v0
.end method

.method public getReturn4w()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->return4w:Ljava/lang/Double;

    return-object v0
.end method

.method public getReturn5y()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->return5y:Ljava/lang/Double;

    return-object v0
.end method

.method public getReturnOverall()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->returnOverall:Ljava/lang/Double;

    return-object v0
.end method

.method public getReturnYTD()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->returnYTD:Ljava/lang/Double;

    return-object v0
.end method

.method public getShares()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/gdata/data/finance/PositionData;->shares:Ljava/lang/Double;

    return-object v0
.end method

.method public hasCostBasis()Z
    .locals 1

    .prologue
    .line 188
    const-class v0, Lcom/google/gdata/data/finance/CostBasis;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PositionData;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasDaysGain()Z
    .locals 1

    .prologue
    .line 226
    const-class v0, Lcom/google/gdata/data/finance/DaysGain;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PositionData;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasGain()Z
    .locals 1

    .prologue
    .line 263
    const-class v0, Lcom/google/gdata/data/finance/Gain;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PositionData;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasGainPercentage()Z
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PositionData;->getGainPercentage()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMarketValue()Z
    .locals 1

    .prologue
    .line 329
    const-class v0, Lcom/google/gdata/data/finance/MarketValue;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PositionData;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasReturn1w()Z
    .locals 1

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PositionData;->getReturn1w()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReturn1y()Z
    .locals 1

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PositionData;->getReturn1y()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReturn3m()Z
    .locals 1

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PositionData;->getReturn3m()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReturn3y()Z
    .locals 1

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PositionData;->getReturn3y()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReturn4w()Z
    .locals 1

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PositionData;->getReturn4w()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReturn5y()Z
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PositionData;->getReturn5y()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReturnOverall()Z
    .locals 1

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PositionData;->getReturnOverall()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReturnYTD()Z
    .locals 1

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PositionData;->getReturnYTD()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShares()Z
    .locals 1

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PositionData;->getShares()Ljava/lang/Double;

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
    .line 610
    const-string v0, "gainPercentage"

    iget-object v1, p0, Lcom/google/gdata/data/finance/PositionData;->gainPercentage:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 611
    const-string v0, "return1w"

    iget-object v1, p0, Lcom/google/gdata/data/finance/PositionData;->return1w:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 612
    const-string v0, "return1y"

    iget-object v1, p0, Lcom/google/gdata/data/finance/PositionData;->return1y:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 613
    const-string v0, "return3m"

    iget-object v1, p0, Lcom/google/gdata/data/finance/PositionData;->return3m:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 614
    const-string v0, "return3y"

    iget-object v1, p0, Lcom/google/gdata/data/finance/PositionData;->return3y:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 615
    const-string v0, "return4w"

    iget-object v1, p0, Lcom/google/gdata/data/finance/PositionData;->return4w:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 616
    const-string v0, "return5y"

    iget-object v1, p0, Lcom/google/gdata/data/finance/PositionData;->return5y:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 617
    const-string v0, "returnOverall"

    iget-object v1, p0, Lcom/google/gdata/data/finance/PositionData;->returnOverall:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 618
    const-string v0, "returnYTD"

    iget-object v1, p0, Lcom/google/gdata/data/finance/PositionData;->returnYTD:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 619
    const-string v0, "shares"

    iget-object v1, p0, Lcom/google/gdata/data/finance/PositionData;->shares:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 620
    return-void
.end method

.method public setCostBasis(Lcom/google/gdata/data/finance/CostBasis;)V
    .locals 1
    .param p1, "costBasis"    # Lcom/google/gdata/data/finance/CostBasis;

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 174
    const-class v0, Lcom/google/gdata/data/finance/CostBasis;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PositionData;->removeExtension(Ljava/lang/Class;)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/finance/PositionData;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setDaysGain(Lcom/google/gdata/data/finance/DaysGain;)V
    .locals 1
    .param p1, "daysGain"    # Lcom/google/gdata/data/finance/DaysGain;

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    const-class v0, Lcom/google/gdata/data/finance/DaysGain;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PositionData;->removeExtension(Ljava/lang/Class;)V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/finance/PositionData;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setGain(Lcom/google/gdata/data/finance/Gain;)V
    .locals 1
    .param p1, "gain"    # Lcom/google/gdata/data/finance/Gain;

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 249
    const-class v0, Lcom/google/gdata/data/finance/Gain;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PositionData;->removeExtension(Ljava/lang/Class;)V

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/finance/PositionData;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setGainPercentage(Ljava/lang/Double;)V
    .locals 0
    .param p1, "gainPercentage"    # Ljava/lang/Double;

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PositionData;->throwExceptionIfImmutable()V

    .line 282
    iput-object p1, p0, Lcom/google/gdata/data/finance/PositionData;->gainPercentage:Ljava/lang/Double;

    .line 283
    return-void
.end method

.method public setMarketValue(Lcom/google/gdata/data/finance/MarketValue;)V
    .locals 1
    .param p1, "marketValue"    # Lcom/google/gdata/data/finance/MarketValue;

    .prologue
    .line 314
    if-nez p1, :cond_0

    .line 315
    const-class v0, Lcom/google/gdata/data/finance/MarketValue;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PositionData;->removeExtension(Ljava/lang/Class;)V

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/finance/PositionData;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setReturn1w(Ljava/lang/Double;)V
    .locals 0
    .param p1, "return1w"    # Ljava/lang/Double;

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PositionData;->throwExceptionIfImmutable()V

    .line 348
    iput-object p1, p0, Lcom/google/gdata/data/finance/PositionData;->return1w:Ljava/lang/Double;

    .line 349
    return-void
.end method

.method public setReturn1y(Ljava/lang/Double;)V
    .locals 0
    .param p1, "return1y"    # Ljava/lang/Double;

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PositionData;->throwExceptionIfImmutable()V

    .line 376
    iput-object p1, p0, Lcom/google/gdata/data/finance/PositionData;->return1y:Ljava/lang/Double;

    .line 377
    return-void
.end method

.method public setReturn3m(Ljava/lang/Double;)V
    .locals 0
    .param p1, "return3m"    # Ljava/lang/Double;

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PositionData;->throwExceptionIfImmutable()V

    .line 404
    iput-object p1, p0, Lcom/google/gdata/data/finance/PositionData;->return3m:Ljava/lang/Double;

    .line 405
    return-void
.end method

.method public setReturn3y(Ljava/lang/Double;)V
    .locals 0
    .param p1, "return3y"    # Ljava/lang/Double;

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PositionData;->throwExceptionIfImmutable()V

    .line 432
    iput-object p1, p0, Lcom/google/gdata/data/finance/PositionData;->return3y:Ljava/lang/Double;

    .line 433
    return-void
.end method

.method public setReturn4w(Ljava/lang/Double;)V
    .locals 0
    .param p1, "return4w"    # Ljava/lang/Double;

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PositionData;->throwExceptionIfImmutable()V

    .line 460
    iput-object p1, p0, Lcom/google/gdata/data/finance/PositionData;->return4w:Ljava/lang/Double;

    .line 461
    return-void
.end method

.method public setReturn5y(Ljava/lang/Double;)V
    .locals 0
    .param p1, "return5y"    # Ljava/lang/Double;

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PositionData;->throwExceptionIfImmutable()V

    .line 488
    iput-object p1, p0, Lcom/google/gdata/data/finance/PositionData;->return5y:Ljava/lang/Double;

    .line 489
    return-void
.end method

.method public setReturnOverall(Ljava/lang/Double;)V
    .locals 0
    .param p1, "returnOverall"    # Ljava/lang/Double;

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PositionData;->throwExceptionIfImmutable()V

    .line 517
    iput-object p1, p0, Lcom/google/gdata/data/finance/PositionData;->returnOverall:Ljava/lang/Double;

    .line 518
    return-void
.end method

.method public setReturnYTD(Ljava/lang/Double;)V
    .locals 0
    .param p1, "returnYTD"    # Ljava/lang/Double;

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PositionData;->throwExceptionIfImmutable()V

    .line 546
    iput-object p1, p0, Lcom/google/gdata/data/finance/PositionData;->returnYTD:Ljava/lang/Double;

    .line 547
    return-void
.end method

.method public setShares(Ljava/lang/Double;)V
    .locals 0
    .param p1, "shares"    # Ljava/lang/Double;

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PositionData;->throwExceptionIfImmutable()V

    .line 575
    iput-object p1, p0, Lcom/google/gdata/data/finance/PositionData;->shares:Ljava/lang/Double;

    .line 576
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{PositionData gainPercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/PositionData;->gainPercentage:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " return1w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/PositionData;->return1w:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " return1y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/PositionData;->return1y:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " return3m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/PositionData;->return3m:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " return3y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/PositionData;->return3y:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " return4w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/PositionData;->return4w:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " return5y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/PositionData;->return5y:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " returnOverall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/PositionData;->returnOverall:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " returnYTD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/PositionData;->returnYTD:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shares="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/PositionData;->shares:Ljava/lang/Double;

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
    .locals 0

    .prologue
    .line 589
    return-void
.end method
