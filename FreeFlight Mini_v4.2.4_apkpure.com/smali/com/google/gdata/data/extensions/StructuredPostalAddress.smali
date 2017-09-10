.class public Lcom/google/gdata/data/extensions/StructuredPostalAddress;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "StructuredPostalAddress.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "structuredPostalAddress"
    nsAlias = "gd"
    nsUri = "http://schemas.google.com/g/2005"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/extensions/StructuredPostalAddress$Usage;,
        Lcom/google/gdata/data/extensions/StructuredPostalAddress$Rel;,
        Lcom/google/gdata/data/extensions/StructuredPostalAddress$MailClass;
    }
.end annotation


# static fields
.field private static final LABEL:Ljava/lang/String; = "label"

.field private static final MAILCLASS:Ljava/lang/String; = "mailClass"

.field private static final PRIMARY:Ljava/lang/String; = "primary"

.field private static final REL:Ljava/lang/String; = "rel"

.field private static final USAGE:Ljava/lang/String; = "usage"

.field static final XML_NAME:Ljava/lang/String; = "structuredPostalAddress"


# instance fields
.field private label:Ljava/lang/String;

.field private mailClass:Ljava/lang/String;

.field private primary:Ljava/lang/Boolean;

.field private rel:Ljava/lang/String;

.field private usage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->label:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->mailClass:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->primary:Ljava/lang/Boolean;

    .line 66
    iput-object v0, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->rel:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->usage:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "mailClass"    # Ljava/lang/String;
    .param p3, "primary"    # Ljava/lang/Boolean;
    .param p4, "rel"    # Ljava/lang/String;
    .param p5, "usage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->label:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->mailClass:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->primary:Ljava/lang/Boolean;

    .line 66
    iput-object v0, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->rel:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->usage:Ljava/lang/String;

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->setLabel(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->setMailClass(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->setPrimary(Ljava/lang/Boolean;)V

    .line 135
    invoke-virtual {p0, p4}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->setRel(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, p5}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->setUsage(Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->setImmutable(Z)V

    .line 138
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 680
    const-class v1, Lcom/google/gdata/data/extensions/StructuredPostalAddress;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 683
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 684
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 685
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

    .line 700
    const-string v0, "label"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->label:Ljava/lang/String;

    .line 701
    const-string v0, "mailClass"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->mailClass:Ljava/lang/String;

    .line 702
    const-string v0, "primary"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->primary:Ljava/lang/Boolean;

    .line 703
    const-string v0, "rel"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->rel:Ljava/lang/String;

    .line 704
    const-string/jumbo v0, "usage"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->usage:Ljava/lang/String;

    .line 705
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 142
    const-class v0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 145
    :cond_0
    const-class v0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;

    const-class v1, Lcom/google/gdata/data/extensions/Agent;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 146
    const-class v0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;

    const-class v1, Lcom/google/gdata/data/extensions/City;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 147
    const-class v0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;

    const-class v1, Lcom/google/gdata/data/extensions/Country;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 148
    const-class v0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;

    const-class v1, Lcom/google/gdata/data/extensions/FormattedAddress;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 149
    const-class v0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;

    const-class v1, Lcom/google/gdata/data/extensions/HouseName;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 150
    const-class v0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;

    const-class v1, Lcom/google/gdata/data/extensions/Neighborhood;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 151
    const-class v0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;

    const-class v1, Lcom/google/gdata/data/extensions/PoBox;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 152
    const-class v0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;

    const-class v1, Lcom/google/gdata/data/extensions/PostCode;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 153
    const-class v0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;

    const-class v1, Lcom/google/gdata/data/extensions/Region;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 154
    const-class v0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;

    const-class v1, Lcom/google/gdata/data/extensions/Street;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 155
    const-class v0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;

    const-class v1, Lcom/google/gdata/data/extensions/Subregion;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getAgent()Lcom/google/gdata/data/extensions/Agent;
    .locals 1

    .prologue
    .line 164
    const-class v0, Lcom/google/gdata/data/extensions/Agent;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Agent;

    return-object v0
.end method

.method public getCity()Lcom/google/gdata/data/extensions/City;
    .locals 1

    .prologue
    .line 198
    const-class v0, Lcom/google/gdata/data/extensions/City;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/City;

    return-object v0
.end method

.method public getCountry()Lcom/google/gdata/data/extensions/Country;
    .locals 1

    .prologue
    .line 230
    const-class v0, Lcom/google/gdata/data/extensions/Country;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Country;

    return-object v0
.end method

.method public getFormattedAddress()Lcom/google/gdata/data/extensions/FormattedAddress;
    .locals 1

    .prologue
    .line 261
    const-class v0, Lcom/google/gdata/data/extensions/FormattedAddress;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/FormattedAddress;

    return-object v0
.end method

.method public getHousename()Lcom/google/gdata/data/extensions/HouseName;
    .locals 1

    .prologue
    .line 293
    const-class v0, Lcom/google/gdata/data/extensions/HouseName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/HouseName;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMailClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->mailClass:Ljava/lang/String;

    return-object v0
.end method

.method public getNeighborhood()Lcom/google/gdata/data/extensions/Neighborhood;
    .locals 1

    .prologue
    .line 384
    const-class v0, Lcom/google/gdata/data/extensions/Neighborhood;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Neighborhood;

    return-object v0
.end method

.method public getPobox()Lcom/google/gdata/data/extensions/PoBox;
    .locals 1

    .prologue
    .line 416
    const-class v0, Lcom/google/gdata/data/extensions/PoBox;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/PoBox;

    return-object v0
.end method

.method public getPostcode()Lcom/google/gdata/data/extensions/PostCode;
    .locals 1

    .prologue
    .line 447
    const-class v0, Lcom/google/gdata/data/extensions/PostCode;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/PostCode;

    return-object v0
.end method

.method public getPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->primary:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRegion()Lcom/google/gdata/data/extensions/Region;
    .locals 1

    .prologue
    .line 509
    const-class v0, Lcom/google/gdata/data/extensions/Region;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Region;

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->rel:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Lcom/google/gdata/data/extensions/Street;
    .locals 1

    .prologue
    .line 574
    const-class v0, Lcom/google/gdata/data/extensions/Street;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Street;

    return-object v0
.end method

.method public getSubregion()Lcom/google/gdata/data/extensions/Subregion;
    .locals 1

    .prologue
    .line 610
    const-class v0, Lcom/google/gdata/data/extensions/Subregion;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Subregion;

    return-object v0
.end method

.method public getUsage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->usage:Ljava/lang/String;

    return-object v0
.end method

.method public hasAgent()Z
    .locals 1

    .prologue
    .line 189
    const-class v0, Lcom/google/gdata/data/extensions/Agent;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasCity()Z
    .locals 1

    .prologue
    .line 221
    const-class v0, Lcom/google/gdata/data/extensions/City;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasCountry()Z
    .locals 1

    .prologue
    .line 252
    const-class v0, Lcom/google/gdata/data/extensions/Country;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasFormattedAddress()Z
    .locals 1

    .prologue
    .line 284
    const-class v0, Lcom/google/gdata/data/extensions/FormattedAddress;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasHousename()Z
    .locals 1

    .prologue
    .line 318
    const-class v0, Lcom/google/gdata/data/extensions/HouseName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMailClass()Z
    .locals 1

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->getMailClass()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNeighborhood()Z
    .locals 1

    .prologue
    .line 407
    const-class v0, Lcom/google/gdata/data/extensions/Neighborhood;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasPobox()Z
    .locals 1

    .prologue
    .line 438
    const-class v0, Lcom/google/gdata/data/extensions/PoBox;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasPostcode()Z
    .locals 1

    .prologue
    .line 469
    const-class v0, Lcom/google/gdata/data/extensions/PostCode;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasPrimary()Z
    .locals 1

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->getPrimary()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRegion()Z
    .locals 1

    .prologue
    .line 535
    const-class v0, Lcom/google/gdata/data/extensions/Region;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasRel()Z
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->getRel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStreet()Z
    .locals 1

    .prologue
    .line 601
    const-class v0, Lcom/google/gdata/data/extensions/Street;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasSubregion()Z
    .locals 1

    .prologue
    .line 635
    const-class v0, Lcom/google/gdata/data/extensions/Subregion;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasUsage()Z
    .locals 1

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->getUsage()Ljava/lang/String;

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
    .line 690
    const-string v0, "label"

    iget-object v1, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->label:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    const-string v0, "mailClass"

    iget-object v1, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->mailClass:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    const-string v0, "primary"

    iget-object v1, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->primary:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 693
    const-string v0, "rel"

    iget-object v1, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->rel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    const-string/jumbo v0, "usage"

    iget-object v1, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->usage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    return-void
.end method

.method public setAgent(Lcom/google/gdata/data/extensions/Agent;)V
    .locals 1
    .param p1, "agent"    # Lcom/google/gdata/data/extensions/Agent;

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 175
    const-class v0, Lcom/google/gdata/data/extensions/Agent;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->removeExtension(Ljava/lang/Class;)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setCity(Lcom/google/gdata/data/extensions/City;)V
    .locals 1
    .param p1, "city"    # Lcom/google/gdata/data/extensions/City;

    .prologue
    .line 208
    if-nez p1, :cond_0

    .line 209
    const-class v0, Lcom/google/gdata/data/extensions/City;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->removeExtension(Ljava/lang/Class;)V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setCountry(Lcom/google/gdata/data/extensions/Country;)V
    .locals 1
    .param p1, "country"    # Lcom/google/gdata/data/extensions/Country;

    .prologue
    .line 239
    if-nez p1, :cond_0

    .line 240
    const-class v0, Lcom/google/gdata/data/extensions/Country;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->removeExtension(Ljava/lang/Class;)V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setFormattedAddress(Lcom/google/gdata/data/extensions/FormattedAddress;)V
    .locals 1
    .param p1, "formattedAddress"    # Lcom/google/gdata/data/extensions/FormattedAddress;

    .prologue
    .line 271
    if-nez p1, :cond_0

    .line 272
    const-class v0, Lcom/google/gdata/data/extensions/FormattedAddress;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->removeExtension(Ljava/lang/Class;)V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setHousename(Lcom/google/gdata/data/extensions/HouseName;)V
    .locals 1
    .param p1, "housename"    # Lcom/google/gdata/data/extensions/HouseName;

    .prologue
    .line 303
    if-nez p1, :cond_0

    .line 304
    const-class v0, Lcom/google/gdata/data/extensions/HouseName;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->removeExtension(Ljava/lang/Class;)V

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->throwExceptionIfImmutable()V

    .line 338
    iput-object p1, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->label:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public setMailClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "mailClass"    # Ljava/lang/String;

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->throwExceptionIfImmutable()V

    .line 366
    iput-object p1, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->mailClass:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public setNeighborhood(Lcom/google/gdata/data/extensions/Neighborhood;)V
    .locals 1
    .param p1, "neighborhood"    # Lcom/google/gdata/data/extensions/Neighborhood;

    .prologue
    .line 394
    if-nez p1, :cond_0

    .line 395
    const-class v0, Lcom/google/gdata/data/extensions/Neighborhood;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->removeExtension(Ljava/lang/Class;)V

    .line 399
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setPobox(Lcom/google/gdata/data/extensions/PoBox;)V
    .locals 1
    .param p1, "pobox"    # Lcom/google/gdata/data/extensions/PoBox;

    .prologue
    .line 425
    if-nez p1, :cond_0

    .line 426
    const-class v0, Lcom/google/gdata/data/extensions/PoBox;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->removeExtension(Ljava/lang/Class;)V

    .line 430
    :goto_0
    return-void

    .line 428
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setPostcode(Lcom/google/gdata/data/extensions/PostCode;)V
    .locals 1
    .param p1, "postcode"    # Lcom/google/gdata/data/extensions/PostCode;

    .prologue
    .line 456
    if-nez p1, :cond_0

    .line 457
    const-class v0, Lcom/google/gdata/data/extensions/PostCode;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->removeExtension(Ljava/lang/Class;)V

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setPrimary(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "primary"    # Ljava/lang/Boolean;

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->throwExceptionIfImmutable()V

    .line 489
    iput-object p1, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->primary:Ljava/lang/Boolean;

    .line 490
    return-void
.end method

.method public setRegion(Lcom/google/gdata/data/extensions/Region;)V
    .locals 1
    .param p1, "region"    # Lcom/google/gdata/data/extensions/Region;

    .prologue
    .line 520
    if-nez p1, :cond_0

    .line 521
    const-class v0, Lcom/google/gdata/data/extensions/Region;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->removeExtension(Ljava/lang/Class;)V

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setRel(Ljava/lang/String;)V
    .locals 0
    .param p1, "rel"    # Ljava/lang/String;

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->throwExceptionIfImmutable()V

    .line 554
    iput-object p1, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->rel:Ljava/lang/String;

    .line 555
    return-void
.end method

.method public setStreet(Lcom/google/gdata/data/extensions/Street;)V
    .locals 1
    .param p1, "street"    # Lcom/google/gdata/data/extensions/Street;

    .prologue
    .line 586
    if-nez p1, :cond_0

    .line 587
    const-class v0, Lcom/google/gdata/data/extensions/Street;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->removeExtension(Ljava/lang/Class;)V

    .line 591
    :goto_0
    return-void

    .line 589
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setSubregion(Lcom/google/gdata/data/extensions/Subregion;)V
    .locals 1
    .param p1, "subregion"    # Lcom/google/gdata/data/extensions/Subregion;

    .prologue
    .line 620
    if-nez p1, :cond_0

    .line 621
    const-class v0, Lcom/google/gdata/data/extensions/Subregion;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->removeExtension(Ljava/lang/Class;)V

    .line 625
    :goto_0
    return-void

    .line 623
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setUsage(Ljava/lang/String;)V
    .locals 0
    .param p1, "usage"    # Ljava/lang/String;

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->throwExceptionIfImmutable()V

    .line 654
    iput-object p1, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->usage:Ljava/lang/String;

    .line 655
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{StructuredPostalAddress label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mailClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->mailClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " primary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->primary:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->rel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/StructuredPostalAddress;->usage:Ljava/lang/String;

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
    .line 668
    return-void
.end method
