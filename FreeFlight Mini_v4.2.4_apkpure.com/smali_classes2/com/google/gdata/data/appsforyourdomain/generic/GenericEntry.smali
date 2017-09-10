.class public Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "GenericEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public addProperties(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 65
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Lcom/google/gdata/data/appsforyourdomain/Property;

    invoke-direct {v0}, Lcom/google/gdata/data/appsforyourdomain/Property;-><init>()V

    .line 53
    .local v0, "prop":Lcom/google/gdata/data/appsforyourdomain/Property;
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/appsforyourdomain/Property;->setName(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, p2}, Lcom/google/gdata/data/appsforyourdomain/Property;->setValue(Ljava/lang/String;)V

    .line 55
    const-class v1, Lcom/google/gdata/data/appsforyourdomain/Property;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 42
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-static {}, Lcom/google/gdata/data/appsforyourdomain/Property;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 45
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 46
    return-void
.end method

.method public getAllProperties()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v4, Lcom/google/gdata/data/appsforyourdomain/Property;

    invoke-virtual {p0, v4}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 121
    .local v3, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/data/appsforyourdomain/Property;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/appsforyourdomain/Property;

    .line 122
    .local v2, "prop":Lcom/google/gdata/data/appsforyourdomain/Property;
    invoke-virtual {v2}, Lcom/google/gdata/data/appsforyourdomain/Property;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/gdata/data/appsforyourdomain/Property;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    .end local v2    # "prop":Lcom/google/gdata/data/appsforyourdomain/Property;
    :cond_0
    return-object v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    const-class v3, Lcom/google/gdata/data/appsforyourdomain/Property;

    invoke-virtual {p0, v3}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 80
    .local v2, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/data/appsforyourdomain/Property;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/appsforyourdomain/Property;

    .line 81
    .local v1, "prop":Lcom/google/gdata/data/appsforyourdomain/Property;
    invoke-virtual {v1}, Lcom/google/gdata/data/appsforyourdomain/Property;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    invoke-virtual {v1}, Lcom/google/gdata/data/appsforyourdomain/Property;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 85
    .end local v1    # "prop":Lcom/google/gdata/data/appsforyourdomain/Property;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public removeProperty(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 95
    const-class v4, Lcom/google/gdata/data/appsforyourdomain/Property;

    invoke-virtual {p0, v4}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 97
    .local v3, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/data/appsforyourdomain/Property;>;"
    const/4 v0, 0x0

    .line 99
    .local v0, "found":Lcom/google/gdata/data/appsforyourdomain/Property;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/appsforyourdomain/Property;

    .line 100
    .local v2, "prop":Lcom/google/gdata/data/appsforyourdomain/Property;
    invoke-virtual {v2}, Lcom/google/gdata/data/appsforyourdomain/Property;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    move-object v0, v2

    .line 106
    .end local v2    # "prop":Lcom/google/gdata/data/appsforyourdomain/Property;
    :cond_1
    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->removeRepeatingExtension(Lcom/google/gdata/data/Extension;)V

    .line 108
    const/4 v4, 0x1

    .line 110
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public validate()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 141
    .local v2, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v5, Lcom/google/gdata/data/appsforyourdomain/Property;

    invoke-virtual {p0, v5}, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 143
    .local v4, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/data/appsforyourdomain/Property;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/data/appsforyourdomain/Property;

    .line 144
    .local v3, "prop":Lcom/google/gdata/data/appsforyourdomain/Property;
    invoke-virtual {v3}, Lcom/google/gdata/data/appsforyourdomain/Property;->getName()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 146
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Found property with null name"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 148
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 149
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate property: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 151
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "prop":Lcom/google/gdata/data/appsforyourdomain/Property;
    :cond_2
    return-void
.end method
