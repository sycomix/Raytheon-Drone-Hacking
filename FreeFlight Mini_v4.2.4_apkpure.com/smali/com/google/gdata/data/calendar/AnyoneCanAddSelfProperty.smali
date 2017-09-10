.class public Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "AnyoneCanAddSelfProperty.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "anyoneCanAddSelf"
    nsAlias = "gCal"
    nsUri = "http://schemas.google.com/gCal/2005"
.end annotation


# static fields
.field public static final FALSE:Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;

.field public static final TRUE:Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;

.field private static final VALUE:Ljava/lang/String; = "value"

.field static final XML_NAME:Ljava/lang/String; = "anyoneCanAddSelf"


# instance fields
.field private value:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;-><init>(Ljava/lang/Boolean;)V

    sput-object v0, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;->TRUE:Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;

    .line 156
    new-instance v0, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;-><init>(Ljava/lang/Boolean;)V

    sput-object v0, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;->FALSE:Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;->value:Ljava/lang/Boolean;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;->value:Ljava/lang/Boolean;

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;->setValue(Ljava/lang/Boolean;)V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;->setImmutable(Z)V

    .line 61
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 108
    const-class v1, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 111
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 112
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 113
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
    .line 124
    const-string/jumbo v0, "value"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;->value:Ljava/lang/Boolean;

    .line 125
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 129
    if-ne p0, p1, :cond_0

    .line 130
    const/4 v1, 0x1

    .line 136
    :goto_0
    return v1

    .line 132
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;->sameClassAs(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 135
    check-cast v0, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;

    .line 136
    .local v0, "other":Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;
    iget-object v1, p0, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;->value:Ljava/lang/Boolean;

    iget-object v2, v0, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;->value:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;->value:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;->getValue()Ljava/lang/Boolean;

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
    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 142
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;->value:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 143
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;->value:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 145
    :cond_0
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 118
    const-string/jumbo v0, "value"

    iget-object v1, p0, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;->value:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public setValue(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;->throwExceptionIfImmutable()V

    .line 79
    iput-object p1, p0, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;->value:Ljava/lang/Boolean;

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{AnyoneCanAddSelfProperty value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;->value:Ljava/lang/Boolean;

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
    .line 93
    iget-object v0, p0, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;->value:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 94
    const-string/jumbo v0, "value"

    invoke-static {v0}, Lcom/google/gdata/data/calendar/AnyoneCanAddSelfProperty;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method
