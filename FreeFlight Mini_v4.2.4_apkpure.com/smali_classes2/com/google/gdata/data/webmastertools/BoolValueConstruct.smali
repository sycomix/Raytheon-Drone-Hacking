.class public abstract Lcom/google/gdata/data/webmastertools/BoolValueConstruct;
.super Lcom/google/gdata/data/ValueConstruct;
.source "BoolValueConstruct.java"


# instance fields
.field private boolValue:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "nodeName"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-object v0, Lcom/google/gdata/data/webmastertools/Namespaces;->WT_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/BoolValueConstruct;->setBooleanValue(Z)V

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "rhs"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/google/gdata/data/ValueConstruct;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 51
    check-cast v0, Lcom/google/gdata/data/webmastertools/BoolValueConstruct;

    .line 52
    .local v0, "r":Lcom/google/gdata/data/webmastertools/BoolValueConstruct;
    iget-boolean v2, p0, Lcom/google/gdata/data/webmastertools/BoolValueConstruct;->boolValue:Z

    iget-boolean v3, v0, Lcom/google/gdata/data/webmastertools/BoolValueConstruct;->boolValue:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBooleanValue()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/gdata/data/webmastertools/BoolValueConstruct;->boolValue:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/gdata/data/webmastertools/BoolValueConstruct;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setBooleanValue(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/google/gdata/data/webmastertools/BoolValueConstruct;->boolValue:Z

    .line 90
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/gdata/data/ValueConstruct;->setValue(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/BoolValueConstruct;->setBooleanValue(Z)V

    .line 85
    :goto_0
    return-void

    .line 80
    :cond_2
    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/webmastertools/BoolValueConstruct;->setBooleanValue(Z)V

    goto :goto_0

    .line 83
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid boolean value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
