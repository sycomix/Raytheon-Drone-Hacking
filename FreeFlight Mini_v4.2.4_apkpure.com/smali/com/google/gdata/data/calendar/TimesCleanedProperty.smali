.class public Lcom/google/gdata/data/calendar/TimesCleanedProperty;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "TimesCleanedProperty.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "timesCleaned"
    nsAlias = "gCal"
    nsUri = "http://schemas.google.com/gCal/2005"
.end annotation


# static fields
.field private static final VALUE:Ljava/lang/String; = "value"

.field static final XML_NAME:Ljava/lang/String; = "timesCleaned"


# instance fields
.field private value:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/calendar/TimesCleanedProperty;->value:Ljava/lang/Integer;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/calendar/TimesCleanedProperty;->value:Ljava/lang/Integer;

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/calendar/TimesCleanedProperty;->setValue(Ljava/lang/Integer;)V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/TimesCleanedProperty;->setImmutable(Z)V

    .line 61
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 112
    const-class v1, Lcom/google/gdata/data/calendar/TimesCleanedProperty;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 114
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 115
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 116
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
    .line 127
    const-string/jumbo v0, "value"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/calendar/TimesCleanedProperty;->value:Ljava/lang/Integer;

    .line 128
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 132
    if-ne p0, p1, :cond_0

    .line 133
    const/4 v1, 0x1

    .line 139
    :goto_0
    return v1

    .line 135
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/calendar/TimesCleanedProperty;->sameClassAs(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 138
    check-cast v0, Lcom/google/gdata/data/calendar/TimesCleanedProperty;

    .line 139
    .local v0, "other":Lcom/google/gdata/data/calendar/TimesCleanedProperty;
    iget-object v1, p0, Lcom/google/gdata/data/calendar/TimesCleanedProperty;->value:Ljava/lang/Integer;

    iget-object v2, v0, Lcom/google/gdata/data/calendar/TimesCleanedProperty;->value:Ljava/lang/Integer;

    invoke-static {v1, v2}, Lcom/google/gdata/data/calendar/TimesCleanedProperty;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/gdata/data/calendar/TimesCleanedProperty;->value:Ljava/lang/Integer;

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/TimesCleanedProperty;->getValue()Ljava/lang/Integer;

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
    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 145
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/calendar/TimesCleanedProperty;->value:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 146
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/calendar/TimesCleanedProperty;->value:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 148
    :cond_0
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 121
    const-string/jumbo v0, "value"

    iget-object v1, p0, Lcom/google/gdata/data/calendar/TimesCleanedProperty;->value:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public setValue(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/TimesCleanedProperty;->throwExceptionIfImmutable()V

    .line 80
    iput-object p1, p0, Lcom/google/gdata/data/calendar/TimesCleanedProperty;->value:Ljava/lang/Integer;

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{TimesCleanedProperty value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/calendar/TimesCleanedProperty;->value:Ljava/lang/Integer;

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
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/gdata/data/calendar/TimesCleanedProperty;->value:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 95
    const-string/jumbo v0, "value"

    invoke-static {v0}, Lcom/google/gdata/data/calendar/TimesCleanedProperty;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 100
    :cond_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/calendar/TimesCleanedProperty;->value:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value attribute must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/data/calendar/TimesCleanedProperty;->value:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
