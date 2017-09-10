.class public abstract Lcom/google/gdata/data/webmastertools/DateTimeValueConstruct;
.super Lcom/google/gdata/data/ValueConstruct;
.source "DateTimeValueConstruct.java"


# instance fields
.field private dateTimeValue:Lcom/google/gdata/data/DateTime;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "nodeName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 36
    sget-object v0, Lcom/google/gdata/data/webmastertools/Namespaces;->WT_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-direct {p0, v0, p1, v1}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-object v1, p0, Lcom/google/gdata/data/webmastertools/DateTimeValueConstruct;->dateTimeValue:Lcom/google/gdata/data/DateTime;

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "rhs"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-super {p0, p1}, Lcom/google/gdata/data/ValueConstruct;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 50
    check-cast v0, Lcom/google/gdata/data/webmastertools/DateTimeValueConstruct;

    .line 51
    .local v0, "r":Lcom/google/gdata/data/webmastertools/DateTimeValueConstruct;
    iget-object v2, p0, Lcom/google/gdata/data/webmastertools/DateTimeValueConstruct;->dateTimeValue:Lcom/google/gdata/data/DateTime;

    if-nez v2, :cond_2

    .line 52
    iget-object v2, v0, Lcom/google/gdata/data/webmastertools/DateTimeValueConstruct;->dateTimeValue:Lcom/google/gdata/data/DateTime;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/google/gdata/data/webmastertools/DateTimeValueConstruct;->dateTimeValue:Lcom/google/gdata/data/DateTime;

    iget-object v2, v0, Lcom/google/gdata/data/webmastertools/DateTimeValueConstruct;->dateTimeValue:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v1, v2}, Lcom/google/gdata/data/DateTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getDateTime()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/gdata/data/webmastertools/DateTimeValueConstruct;->dateTimeValue:Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/gdata/data/webmastertools/DateTimeValueConstruct;->dateTimeValue:Lcom/google/gdata/data/DateTime;

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/webmastertools/DateTimeValueConstruct;->dateTimeValue:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v0}, Lcom/google/gdata/data/DateTime;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setDateTime(Lcom/google/gdata/data/DateTime;)V
    .locals 2
    .param p1, "value"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/google/gdata/data/webmastertools/DateTimeValueConstruct;->dateTimeValue:Lcom/google/gdata/data/DateTime;

    .line 102
    invoke-virtual {p1}, Lcom/google/gdata/data/DateTime;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/gdata/data/ValueConstruct;->setValue(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "value must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/gdata/data/DateTime;->parseDateTime(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;

    move-result-object v1

    .line 86
    .local v1, "parsedValue":Lcom/google/gdata/data/DateTime;
    invoke-virtual {p0, v1}, Lcom/google/gdata/data/webmastertools/DateTimeValueConstruct;->setDateTime(Lcom/google/gdata/data/DateTime;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-void

    .line 87
    .end local v1    # "parsedValue":Lcom/google/gdata/data/DateTime;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid date"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
