.class public Lcom/google/gdata/data/analytics/ManagementEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "ManagementEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/analytics/ManagementEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 48
    return-void
.end method


# virtual methods
.method public addProperty(Lcom/google/gdata/data/analytics/Property;)V
    .locals 1
    .param p1, "property"    # Lcom/google/gdata/data/analytics/Property;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/ManagementEntry;->getProperties()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 4
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    const-class v0, Lcom/google/gdata/data/analytics/ManagementEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 56
    const-class v0, Lcom/google/gdata/data/analytics/ManagementEntry;

    const-class v1, Lcom/google/gdata/data/analytics/Goal;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 57
    new-instance v0, Lcom/google/gdata/data/analytics/Goal;

    invoke-direct {v0}, Lcom/google/gdata/data/analytics/Goal;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/analytics/Goal;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 58
    const-class v0, Lcom/google/gdata/data/analytics/ManagementEntry;

    invoke-static {v2, v3}, Lcom/google/gdata/data/analytics/AnalyticsLink;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 60
    const-class v0, Lcom/google/gdata/data/analytics/ManagementEntry;

    invoke-static {v2, v3}, Lcom/google/gdata/data/analytics/Property;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 62
    const-class v0, Lcom/google/gdata/data/analytics/ManagementEntry;

    const-class v1, Lcom/google/gdata/data/analytics/Segment;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 63
    new-instance v0, Lcom/google/gdata/data/analytics/Segment;

    invoke-direct {v0}, Lcom/google/gdata/data/analytics/Segment;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/analytics/Segment;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_0
.end method

.method public getChildLink(Ljava/lang/String;)Lcom/google/gdata/data/analytics/AnalyticsLink;
    .locals 5
    .param p1, "targetKind"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/ManagementEntry;->getLinks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/Link;

    .line 222
    .local v2, "link":Lcom/google/gdata/data/Link;
    invoke-virtual {v2}, Lcom/google/gdata/data/Link;->getRel()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://schemas.google.com/ga/2009#child"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 224
    check-cast v0, Lcom/google/gdata/data/analytics/AnalyticsLink;

    .line 225
    .local v0, "analyticsLink":Lcom/google/gdata/data/analytics/AnalyticsLink;
    invoke-virtual {v0}, Lcom/google/gdata/data/analytics/AnalyticsLink;->getTargetKind()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    .end local v0    # "analyticsLink":Lcom/google/gdata/data/analytics/AnalyticsLink;
    .end local v2    # "link":Lcom/google/gdata/data/Link;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildLinks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/analytics/AnalyticsLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v2, "links":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/data/analytics/AnalyticsLink;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/ManagementEntry;->getLinks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/Link;

    .line 209
    .local v1, "link":Lcom/google/gdata/data/Link;
    invoke-virtual {v1}, Lcom/google/gdata/data/Link;->getRel()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://schemas.google.com/ga/2009#child"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    check-cast v1, Lcom/google/gdata/data/analytics/AnalyticsLink;

    .end local v1    # "link":Lcom/google/gdata/data/Link;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    :cond_1
    return-object v2
.end method

.method public getGoal()Lcom/google/gdata/data/analytics/Goal;
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/google/gdata/data/analytics/Goal;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ManagementEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/Goal;

    return-object v0
.end method

.method public getParentLinks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/analytics/AnalyticsLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v2, "links":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/data/analytics/AnalyticsLink;>;"
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/ManagementEntry;->getLinks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/Link;

    .line 196
    .local v1, "link":Lcom/google/gdata/data/Link;
    invoke-virtual {v1}, Lcom/google/gdata/data/Link;->getRel()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://schemas.google.com/ga/2009#parent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    check-cast v1, Lcom/google/gdata/data/analytics/AnalyticsLink;

    .end local v1    # "link":Lcom/google/gdata/data/Link;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    :cond_1
    return-object v2
.end method

.method public getProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/analytics/Property;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    const-class v0, Lcom/google/gdata/data/analytics/Property;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ManagementEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/ManagementEntry;->hasProperties()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/ManagementEntry;->getProperties()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/analytics/Property;

    .line 182
    .local v1, "property":Lcom/google/gdata/data/analytics/Property;
    invoke-virtual {v1}, Lcom/google/gdata/data/analytics/Property;->hasName()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/gdata/data/analytics/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {v1}, Lcom/google/gdata/data/analytics/Property;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 187
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "property":Lcom/google/gdata/data/analytics/Property;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSegment()Lcom/google/gdata/data/analytics/Segment;
    .locals 1

    .prologue
    .line 130
    const-class v0, Lcom/google/gdata/data/analytics/Segment;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ManagementEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/analytics/Segment;

    return-object v0
.end method

.method public hasGoal()Z
    .locals 1

    .prologue
    .line 94
    const-class v0, Lcom/google/gdata/data/analytics/Goal;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ManagementEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasProperties()Z
    .locals 1

    .prologue
    .line 121
    const-class v0, Lcom/google/gdata/data/analytics/Property;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ManagementEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasSegment()Z
    .locals 1

    .prologue
    .line 152
    const-class v0, Lcom/google/gdata/data/analytics/Segment;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ManagementEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setGoal(Lcom/google/gdata/data/analytics/Goal;)V
    .locals 1
    .param p1, "goal"    # Lcom/google/gdata/data/analytics/Goal;

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    const-class v0, Lcom/google/gdata/data/analytics/Goal;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ManagementEntry;->removeExtension(Ljava/lang/Class;)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/ManagementEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setSegment(Lcom/google/gdata/data/analytics/Segment;)V
    .locals 1
    .param p1, "segment"    # Lcom/google/gdata/data/analytics/Segment;

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 140
    const-class v0, Lcom/google/gdata/data/analytics/Segment;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/ManagementEntry;->removeExtension(Ljava/lang/Class;)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/ManagementEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ManagementEntry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method
