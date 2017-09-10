.class public Lcom/google/gdata/data/finance/PortfolioData;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "PortfolioData.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "portfolioData"
    nsAlias = "gf"
    nsUri = "http://schemas.google.com/finance/2007"
.end annotation


# static fields
.field private static final CURRENCYCODE:Ljava/lang/String; = "currencyCode"

.field private static final GAINPERCENTAGE:Ljava/lang/String; = "gainPercentage"

.field private static final RETURN1W:Ljava/lang/String; = "return1w"

.field private static final RETURN1Y:Ljava/lang/String; = "return1y"

.field private static final RETURN3M:Ljava/lang/String; = "return3m"

.field private static final RETURN3Y:Ljava/lang/String; = "return3y"

.field private static final RETURN4W:Ljava/lang/String; = "return4w"

.field private static final RETURN5Y:Ljava/lang/String; = "return5y"

.field private static final RETURNOVERALL:Ljava/lang/String; = "returnOverall"

.field private static final RETURNYTD:Ljava/lang/String; = "returnYTD"

.field static final XML_NAME:Ljava/lang/String; = "portfolioData"


# instance fields
.field private currencyCode:Ljava/lang/String;

.field private gainPercentage:Ljava/lang/Double;

.field private return1w:Ljava/lang/Double;

.field private return1y:Ljava/lang/Double;

.field private return3m:Ljava/lang/Double;

.field private return3y:Ljava/lang/Double;

.field private return4w:Ljava/lang/Double;

.field private return5y:Ljava/lang/Double;

.field private returnOverall:Ljava/lang/Double;

.field private returnYTD:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->currencyCode:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->gainPercentage:Ljava/lang/Double;

    .line 77
    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->return1w:Ljava/lang/Double;

    .line 80
    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->return1y:Ljava/lang/Double;

    .line 83
    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->return3m:Ljava/lang/Double;

    .line 86
    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->return3y:Ljava/lang/Double;

    .line 89
    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->return4w:Ljava/lang/Double;

    .line 92
    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->return5y:Ljava/lang/Double;

    .line 95
    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->returnOverall:Ljava/lang/Double;

    .line 98
    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->returnYTD:Ljava/lang/Double;

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 1
    .param p1, "currencyCode"    # Ljava/lang/String;
    .param p2, "gainPercentage"    # Ljava/lang/Double;
    .param p3, "return1w"    # Ljava/lang/Double;
    .param p4, "return1y"    # Ljava/lang/Double;
    .param p5, "return3m"    # Ljava/lang/Double;
    .param p6, "return3y"    # Ljava/lang/Double;
    .param p7, "return4w"    # Ljava/lang/Double;
    .param p8, "return5y"    # Ljava/lang/Double;
    .param p9, "returnOverall"    # Ljava/lang/Double;
    .param p10, "returnYTD"    # Ljava/lang/Double;

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->currencyCode:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->gainPercentage:Ljava/lang/Double;

    .line 77
    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->return1w:Ljava/lang/Double;

    .line 80
    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->return1y:Ljava/lang/Double;

    .line 83
    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->return3m:Ljava/lang/Double;

    .line 86
    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->return3y:Ljava/lang/Double;

    .line 89
    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->return4w:Ljava/lang/Double;

    .line 92
    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->return5y:Ljava/lang/Double;

    .line 95
    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->returnOverall:Ljava/lang/Double;

    .line 98
    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->returnYTD:Ljava/lang/Double;

    .line 126
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/finance/PortfolioData;->setCurrencyCode(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/finance/PortfolioData;->setGainPercentage(Ljava/lang/Double;)V

    .line 128
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/finance/PortfolioData;->setReturn1w(Ljava/lang/Double;)V

    .line 129
    invoke-virtual {p0, p4}, Lcom/google/gdata/data/finance/PortfolioData;->setReturn1y(Ljava/lang/Double;)V

    .line 130
    invoke-virtual {p0, p5}, Lcom/google/gdata/data/finance/PortfolioData;->setReturn3m(Ljava/lang/Double;)V

    .line 131
    invoke-virtual {p0, p6}, Lcom/google/gdata/data/finance/PortfolioData;->setReturn3y(Ljava/lang/Double;)V

    .line 132
    invoke-virtual {p0, p7}, Lcom/google/gdata/data/finance/PortfolioData;->setReturn4w(Ljava/lang/Double;)V

    .line 133
    invoke-virtual {p0, p8}, Lcom/google/gdata/data/finance/PortfolioData;->setReturn5y(Ljava/lang/Double;)V

    .line 134
    invoke-virtual {p0, p9}, Lcom/google/gdata/data/finance/PortfolioData;->setReturnOverall(Ljava/lang/Double;)V

    .line 135
    invoke-virtual {p0, p10}, Lcom/google/gdata/data/finance/PortfolioData;->setReturnYTD(Ljava/lang/Double;)V

    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PortfolioData;->setImmutable(Z)V

    .line 137
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 588
    const-class v1, Lcom/google/gdata/data/finance/PortfolioData;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 590
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 591
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 592
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

    .line 612
    const-string v0, "currencyCode"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->currencyCode:Ljava/lang/String;

    .line 613
    const-string v0, "gainPercentage"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeDouble(Ljava/lang/String;Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->gainPercentage:Ljava/lang/Double;

    .line 614
    const-string v0, "return1w"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeDouble(Ljava/lang/String;Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->return1w:Ljava/lang/Double;

    .line 615
    const-string v0, "return1y"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeDouble(Ljava/lang/String;Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->return1y:Ljava/lang/Double;

    .line 616
    const-string v0, "return3m"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeDouble(Ljava/lang/String;Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->return3m:Ljava/lang/Double;

    .line 617
    const-string v0, "return3y"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeDouble(Ljava/lang/String;Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->return3y:Ljava/lang/Double;

    .line 618
    const-string v0, "return4w"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeDouble(Ljava/lang/String;Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->return4w:Ljava/lang/Double;

    .line 619
    const-string v0, "return5y"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeDouble(Ljava/lang/String;Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->return5y:Ljava/lang/Double;

    .line 620
    const-string v0, "returnOverall"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeDouble(Ljava/lang/String;Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->returnOverall:Ljava/lang/Double;

    .line 621
    const-string v0, "returnYTD"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeDouble(Ljava/lang/String;Z)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->returnYTD:Ljava/lang/Double;

    .line 622
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 141
    const-class v0, Lcom/google/gdata/data/finance/PortfolioData;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 144
    :cond_0
    const-class v0, Lcom/google/gdata/data/finance/PortfolioData;

    const-class v1, Lcom/google/gdata/data/finance/CostBasis;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 145
    new-instance v0, Lcom/google/gdata/data/finance/CostBasis;

    invoke-direct {v0}, Lcom/google/gdata/data/finance/CostBasis;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/finance/CostBasis;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 146
    const-class v0, Lcom/google/gdata/data/finance/PortfolioData;

    const-class v1, Lcom/google/gdata/data/finance/DaysGain;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 147
    new-instance v0, Lcom/google/gdata/data/finance/DaysGain;

    invoke-direct {v0}, Lcom/google/gdata/data/finance/DaysGain;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/finance/DaysGain;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 148
    const-class v0, Lcom/google/gdata/data/finance/PortfolioData;

    const-class v1, Lcom/google/gdata/data/finance/Gain;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 149
    new-instance v0, Lcom/google/gdata/data/finance/Gain;

    invoke-direct {v0}, Lcom/google/gdata/data/finance/Gain;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/finance/Gain;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 150
    const-class v0, Lcom/google/gdata/data/finance/PortfolioData;

    const-class v1, Lcom/google/gdata/data/finance/MarketValue;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 151
    new-instance v0, Lcom/google/gdata/data/finance/MarketValue;

    invoke-direct {v0}, Lcom/google/gdata/data/finance/MarketValue;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/finance/MarketValue;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_0
.end method

.method public getCostBasis()Lcom/google/gdata/data/finance/CostBasis;
    .locals 1

    .prologue
    .line 160
    const-class v0, Lcom/google/gdata/data/finance/CostBasis;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PortfolioData;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/finance/CostBasis;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDaysGain()Lcom/google/gdata/data/finance/DaysGain;
    .locals 1

    .prologue
    .line 223
    const-class v0, Lcom/google/gdata/data/finance/DaysGain;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PortfolioData;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/finance/DaysGain;

    return-object v0
.end method

.method public getGain()Lcom/google/gdata/data/finance/Gain;
    .locals 1

    .prologue
    .line 257
    const-class v0, Lcom/google/gdata/data/finance/Gain;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PortfolioData;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/finance/Gain;

    return-object v0
.end method

.method public getGainPercentage()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->gainPercentage:Ljava/lang/Double;

    return-object v0
.end method

.method public getMarketValue()Lcom/google/gdata/data/finance/MarketValue;
    .locals 1

    .prologue
    .line 320
    const-class v0, Lcom/google/gdata/data/finance/MarketValue;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PortfolioData;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/finance/MarketValue;

    return-object v0
.end method

.method public getReturn1w()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->return1w:Ljava/lang/Double;

    return-object v0
.end method

.method public getReturn1y()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->return1y:Ljava/lang/Double;

    return-object v0
.end method

.method public getReturn3m()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->return3m:Ljava/lang/Double;

    return-object v0
.end method

.method public getReturn3y()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->return3y:Ljava/lang/Double;

    return-object v0
.end method

.method public getReturn4w()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->return4w:Ljava/lang/Double;

    return-object v0
.end method

.method public getReturn5y()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->return5y:Ljava/lang/Double;

    return-object v0
.end method

.method public getReturnOverall()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->returnOverall:Ljava/lang/Double;

    return-object v0
.end method

.method public getReturnYTD()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/gdata/data/finance/PortfolioData;->returnYTD:Ljava/lang/Double;

    return-object v0
.end method

.method public hasCostBasis()Z
    .locals 1

    .prologue
    .line 185
    const-class v0, Lcom/google/gdata/data/finance/CostBasis;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PortfolioData;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasCurrencyCode()Z
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PortfolioData;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDaysGain()Z
    .locals 1

    .prologue
    .line 248
    const-class v0, Lcom/google/gdata/data/finance/DaysGain;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PortfolioData;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasGain()Z
    .locals 1

    .prologue
    .line 282
    const-class v0, Lcom/google/gdata/data/finance/Gain;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PortfolioData;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasGainPercentage()Z
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PortfolioData;->getGainPercentage()Ljava/lang/Double;

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
    .line 345
    const-class v0, Lcom/google/gdata/data/finance/MarketValue;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PortfolioData;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasReturn1w()Z
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PortfolioData;->getReturn1w()Ljava/lang/Double;

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
    .line 401
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PortfolioData;->getReturn1y()Ljava/lang/Double;

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
    .line 429
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PortfolioData;->getReturn3m()Ljava/lang/Double;

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
    .line 457
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PortfolioData;->getReturn3y()Ljava/lang/Double;

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
    .line 485
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PortfolioData;->getReturn4w()Ljava/lang/Double;

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
    .line 513
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PortfolioData;->getReturn5y()Ljava/lang/Double;

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
    .line 542
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PortfolioData;->getReturnOverall()Ljava/lang/Double;

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
    .line 571
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PortfolioData;->getReturnYTD()Ljava/lang/Double;

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
    .line 597
    const-string v0, "currencyCode"

    iget-object v1, p0, Lcom/google/gdata/data/finance/PortfolioData;->currencyCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const-string v0, "gainPercentage"

    iget-object v1, p0, Lcom/google/gdata/data/finance/PortfolioData;->gainPercentage:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 599
    const-string v0, "return1w"

    iget-object v1, p0, Lcom/google/gdata/data/finance/PortfolioData;->return1w:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 600
    const-string v0, "return1y"

    iget-object v1, p0, Lcom/google/gdata/data/finance/PortfolioData;->return1y:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 601
    const-string v0, "return3m"

    iget-object v1, p0, Lcom/google/gdata/data/finance/PortfolioData;->return3m:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 602
    const-string v0, "return3y"

    iget-object v1, p0, Lcom/google/gdata/data/finance/PortfolioData;->return3y:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 603
    const-string v0, "return4w"

    iget-object v1, p0, Lcom/google/gdata/data/finance/PortfolioData;->return4w:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 604
    const-string v0, "return5y"

    iget-object v1, p0, Lcom/google/gdata/data/finance/PortfolioData;->return5y:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 605
    const-string v0, "returnOverall"

    iget-object v1, p0, Lcom/google/gdata/data/finance/PortfolioData;->returnOverall:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 606
    const-string v0, "returnYTD"

    iget-object v1, p0, Lcom/google/gdata/data/finance/PortfolioData;->returnYTD:Ljava/lang/Double;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 607
    return-void
.end method

.method public setCostBasis(Lcom/google/gdata/data/finance/CostBasis;)V
    .locals 1
    .param p1, "costBasis"    # Lcom/google/gdata/data/finance/CostBasis;

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    const-class v0, Lcom/google/gdata/data/finance/CostBasis;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PortfolioData;->removeExtension(Ljava/lang/Class;)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/finance/PortfolioData;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setCurrencyCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PortfolioData;->throwExceptionIfImmutable()V

    .line 204
    iput-object p1, p0, Lcom/google/gdata/data/finance/PortfolioData;->currencyCode:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setDaysGain(Lcom/google/gdata/data/finance/DaysGain;)V
    .locals 1
    .param p1, "daysGain"    # Lcom/google/gdata/data/finance/DaysGain;

    .prologue
    .line 233
    if-nez p1, :cond_0

    .line 234
    const-class v0, Lcom/google/gdata/data/finance/DaysGain;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PortfolioData;->removeExtension(Ljava/lang/Class;)V

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/finance/PortfolioData;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setGain(Lcom/google/gdata/data/finance/Gain;)V
    .locals 1
    .param p1, "gain"    # Lcom/google/gdata/data/finance/Gain;

    .prologue
    .line 267
    if-nez p1, :cond_0

    .line 268
    const-class v0, Lcom/google/gdata/data/finance/Gain;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PortfolioData;->removeExtension(Ljava/lang/Class;)V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/finance/PortfolioData;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setGainPercentage(Ljava/lang/Double;)V
    .locals 0
    .param p1, "gainPercentage"    # Ljava/lang/Double;

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PortfolioData;->throwExceptionIfImmutable()V

    .line 301
    iput-object p1, p0, Lcom/google/gdata/data/finance/PortfolioData;->gainPercentage:Ljava/lang/Double;

    .line 302
    return-void
.end method

.method public setMarketValue(Lcom/google/gdata/data/finance/MarketValue;)V
    .locals 1
    .param p1, "marketValue"    # Lcom/google/gdata/data/finance/MarketValue;

    .prologue
    .line 330
    if-nez p1, :cond_0

    .line 331
    const-class v0, Lcom/google/gdata/data/finance/MarketValue;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PortfolioData;->removeExtension(Ljava/lang/Class;)V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/finance/PortfolioData;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setReturn1w(Ljava/lang/Double;)V
    .locals 0
    .param p1, "return1w"    # Ljava/lang/Double;

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PortfolioData;->throwExceptionIfImmutable()V

    .line 364
    iput-object p1, p0, Lcom/google/gdata/data/finance/PortfolioData;->return1w:Ljava/lang/Double;

    .line 365
    return-void
.end method

.method public setReturn1y(Ljava/lang/Double;)V
    .locals 0
    .param p1, "return1y"    # Ljava/lang/Double;

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PortfolioData;->throwExceptionIfImmutable()V

    .line 392
    iput-object p1, p0, Lcom/google/gdata/data/finance/PortfolioData;->return1y:Ljava/lang/Double;

    .line 393
    return-void
.end method

.method public setReturn3m(Ljava/lang/Double;)V
    .locals 0
    .param p1, "return3m"    # Ljava/lang/Double;

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PortfolioData;->throwExceptionIfImmutable()V

    .line 420
    iput-object p1, p0, Lcom/google/gdata/data/finance/PortfolioData;->return3m:Ljava/lang/Double;

    .line 421
    return-void
.end method

.method public setReturn3y(Ljava/lang/Double;)V
    .locals 0
    .param p1, "return3y"    # Ljava/lang/Double;

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PortfolioData;->throwExceptionIfImmutable()V

    .line 448
    iput-object p1, p0, Lcom/google/gdata/data/finance/PortfolioData;->return3y:Ljava/lang/Double;

    .line 449
    return-void
.end method

.method public setReturn4w(Ljava/lang/Double;)V
    .locals 0
    .param p1, "return4w"    # Ljava/lang/Double;

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PortfolioData;->throwExceptionIfImmutable()V

    .line 476
    iput-object p1, p0, Lcom/google/gdata/data/finance/PortfolioData;->return4w:Ljava/lang/Double;

    .line 477
    return-void
.end method

.method public setReturn5y(Ljava/lang/Double;)V
    .locals 0
    .param p1, "return5y"    # Ljava/lang/Double;

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PortfolioData;->throwExceptionIfImmutable()V

    .line 504
    iput-object p1, p0, Lcom/google/gdata/data/finance/PortfolioData;->return5y:Ljava/lang/Double;

    .line 505
    return-void
.end method

.method public setReturnOverall(Ljava/lang/Double;)V
    .locals 0
    .param p1, "returnOverall"    # Ljava/lang/Double;

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PortfolioData;->throwExceptionIfImmutable()V

    .line 533
    iput-object p1, p0, Lcom/google/gdata/data/finance/PortfolioData;->returnOverall:Ljava/lang/Double;

    .line 534
    return-void
.end method

.method public setReturnYTD(Ljava/lang/Double;)V
    .locals 0
    .param p1, "returnYTD"    # Ljava/lang/Double;

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PortfolioData;->throwExceptionIfImmutable()V

    .line 562
    iput-object p1, p0, Lcom/google/gdata/data/finance/PortfolioData;->returnYTD:Ljava/lang/Double;

    .line 563
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{PortfolioData currencyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/PortfolioData;->currencyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gainPercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/PortfolioData;->gainPercentage:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " return1w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/PortfolioData;->return1w:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " return1y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/PortfolioData;->return1y:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " return3m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/PortfolioData;->return3m:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " return3y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/PortfolioData;->return3y:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " return4w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/PortfolioData;->return4w:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " return5y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/PortfolioData;->return5y:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " returnOverall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/PortfolioData;->returnOverall:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " returnYTD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/finance/PortfolioData;->returnYTD:Ljava/lang/Double;

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
    .line 576
    return-void
.end method
