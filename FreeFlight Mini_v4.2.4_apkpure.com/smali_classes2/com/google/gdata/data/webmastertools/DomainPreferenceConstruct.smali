.class public abstract Lcom/google/gdata/data/webmastertools/DomainPreferenceConstruct;
.super Lcom/google/gdata/data/EnumConstruct;
.source "DomainPreferenceConstruct.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 36
    sget-object v0, Lcom/google/gdata/data/webmastertools/Namespaces;->WT_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/gdata/data/webmastertools/DomainPreferenceConstruct;->getValues()Ljava/util/HashSet;

    move-result-object v2

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/google/gdata/data/EnumConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 37
    invoke-static {}, Lcom/google/gdata/data/webmastertools/DomainPreference;->getDefault()Lcom/google/gdata/data/webmastertools/DomainPreference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/DomainPreferenceConstruct;->setPreference(Lcom/google/gdata/data/webmastertools/DomainPreference;)V

    .line 38
    return-void
.end method

.method private static getValues()Ljava/util/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 47
    .local v4, "values":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/gdata/data/webmastertools/DomainPreference;->values()[Lcom/google/gdata/data/webmastertools/DomainPreference;

    move-result-object v0

    .local v0, "arr$":[Lcom/google/gdata/data/webmastertools/DomainPreference;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 48
    .local v3, "preference":Lcom/google/gdata/data/webmastertools/DomainPreference;
    invoke-virtual {v3}, Lcom/google/gdata/data/webmastertools/DomainPreference;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    .end local v3    # "preference":Lcom/google/gdata/data/webmastertools/DomainPreference;
    :cond_0
    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/google/gdata/data/EnumConstruct;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    .line 63
    .end local p1    # "rhs":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "rhs":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/DomainPreferenceConstruct;->getValue()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/google/gdata/data/webmastertools/DomainPreferenceConstruct;

    .end local p1    # "rhs":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/gdata/data/webmastertools/DomainPreferenceConstruct;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getPreference()Lcom/google/gdata/data/webmastertools/DomainPreference;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/DomainPreferenceConstruct;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/data/webmastertools/DomainPreference;->fromString(Ljava/lang/String;)Lcom/google/gdata/data/webmastertools/DomainPreference;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/DomainPreferenceConstruct;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setPreference(Lcom/google/gdata/data/webmastertools/DomainPreference;)V
    .locals 1
    .param p1, "value"    # Lcom/google/gdata/data/webmastertools/DomainPreference;

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/google/gdata/data/webmastertools/DomainPreference;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/gdata/data/EnumConstruct;->setValue(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/webmastertools/DomainPreferenceConstruct;->values:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The argument is not a valid preference"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    invoke-super {p0, p1}, Lcom/google/gdata/data/EnumConstruct;->setValue(Ljava/lang/String;)V

    .line 96
    return-void
.end method
