.class public Lcom/google/gdata/data/calendar/ResourceProperty;
.super Lcom/google/gdata/data/AbstractExtension;
.source "ResourceProperty.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "resource"
    nsAlias = "gCal"
    nsUri = "http://schemas.google.com/gCal/2005"
.end annotation


# static fields
.field private static final ATTRIBUTE_ID:Ljava/lang/String; = "id"

.field private static final ATTRIBUTE_VALUE:Ljava/lang/String; = "value"

.field static final EXTENSION_LOCAL_NAME:Ljava/lang/String; = "resource"

.field public static final FALSE:Lcom/google/gdata/data/calendar/ResourceProperty;

.field public static final TRUE:Lcom/google/gdata/data/calendar/ResourceProperty;


# instance fields
.field protected id:Ljava/lang/String;

.field protected value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/google/gdata/data/calendar/ResourceProperty;

    const-string/jumbo v1, "true"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/calendar/ResourceProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/calendar/ResourceProperty;->TRUE:Lcom/google/gdata/data/calendar/ResourceProperty;

    .line 43
    new-instance v0, Lcom/google/gdata/data/calendar/ResourceProperty;

    const-string v1, "false"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/calendar/ResourceProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/calendar/ResourceProperty;->FALSE:Lcom/google/gdata/data/calendar/ResourceProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gdata/data/calendar/ResourceProperty;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/gdata/data/calendar/ResourceProperty;->value:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/google/gdata/data/calendar/ResourceProperty;

    invoke-static {v0}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

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

    .line 84
    const-string v0, "id"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/calendar/ResourceProperty;->id:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/calendar/ResourceProperty;->value:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    if-ne p0, p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 101
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/calendar/ResourceProperty;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 102
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 105
    check-cast v0, Lcom/google/gdata/data/calendar/ResourceProperty;

    .line 107
    .local v0, "prop":Lcom/google/gdata/data/calendar/ResourceProperty;
    iget-object v3, p0, Lcom/google/gdata/data/calendar/ResourceProperty;->value:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/calendar/ResourceProperty;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/calendar/ResourceProperty;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/calendar/ResourceProperty;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/calendar/ResourceProperty;->id:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/calendar/ResourceProperty;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/gdata/data/calendar/ResourceProperty;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/gdata/data/calendar/ResourceProperty;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 113
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/calendar/ResourceProperty;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 114
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/calendar/ResourceProperty;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/calendar/ResourceProperty;->id:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 117
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/calendar/ResourceProperty;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 120
    :cond_1
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 77
    const-string v0, "id"

    iget-object v1, p0, Lcom/google/gdata/data/calendar/ResourceProperty;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v0, "value"

    iget-object v1, p0, Lcom/google/gdata/data/calendar/ResourceProperty;->value:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "resId"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/gdata/data/calendar/ResourceProperty;->id:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/gdata/data/calendar/ResourceProperty;->value:Ljava/lang/String;

    .line 73
    return-void
.end method

.method protected validate()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/gdata/data/calendar/ResourceProperty;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/data/calendar/ResourceProperty;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No attributes defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    return-void
.end method
