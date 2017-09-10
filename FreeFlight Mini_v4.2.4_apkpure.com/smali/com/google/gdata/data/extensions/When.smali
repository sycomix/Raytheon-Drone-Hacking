.class public Lcom/google/gdata/data/extensions/When;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "When.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    isRepeatable = true
    localName = "when"
    nsAlias = "gd"
    nsUri = "http://schemas.google.com/g/2005"
.end annotation


# static fields
.field private static final END_TIME:Ljava/lang/String; = "endTime"

.field private static final START_TIME:Ljava/lang/String; = "startTime"

.field private static final VALUE_STRING:Ljava/lang/String; = "valueString"

.field static final WHEN:Ljava/lang/String; = "when"


# instance fields
.field protected endTime:Lcom/google/gdata/data/DateTime;

.field protected rel:Ljava/lang/String;

.field protected startTime:Lcom/google/gdata/data/DateTime;

.field protected valueString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/gdata/data/extensions/When;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "repeatable"    # Z

    .prologue
    .line 80
    const-class v1, Lcom/google/gdata/data/extensions/When;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 82
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 83
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

    .line 119
    const-string v0, "startTime"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeDateTime(Ljava/lang/String;Z)Lcom/google/gdata/data/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/When;->startTime:Lcom/google/gdata/data/DateTime;

    .line 120
    const-string v0, "endTime"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeDateTime(Ljava/lang/String;Z)Lcom/google/gdata/data/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/When;->endTime:Lcom/google/gdata/data/DateTime;

    .line 121
    const-string/jumbo v0, "valueString"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/When;->valueString:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public getEndTime()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/gdata/data/extensions/When;->endTime:Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/gdata/data/extensions/When;->rel:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/gdata/data/extensions/When;->startTime:Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/gdata/data/extensions/When;->valueString:Ljava/lang/String;

    return-object v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 111
    const-string v0, "startTime"

    iget-object v1, p0, Lcom/google/gdata/data/extensions/When;->startTime:Lcom/google/gdata/data/DateTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    const-string v0, "endTime"

    iget-object v1, p0, Lcom/google/gdata/data/extensions/When;->endTime:Lcom/google/gdata/data/DateTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    const-string/jumbo v0, "valueString"

    iget-object v1, p0, Lcom/google/gdata/data/extensions/When;->valueString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public setEndTime(Lcom/google/gdata/data/DateTime;)V
    .locals 0
    .param p1, "v"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/gdata/data/extensions/When;->endTime:Lcom/google/gdata/data/DateTime;

    return-void
.end method

.method public setRel(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/gdata/data/extensions/When;->rel:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(Lcom/google/gdata/data/DateTime;)V
    .locals 0
    .param p1, "v"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/gdata/data/extensions/When;->startTime:Lcom/google/gdata/data/DateTime;

    return-void
.end method

.method public setValueString(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/gdata/data/extensions/When;->valueString:Ljava/lang/String;

    return-void
.end method

.method protected validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/gdata/data/extensions/When;->startTime:Lcom/google/gdata/data/DateTime;

    if-nez v0, :cond_0

    .line 94
    const-string v0, "startTime"

    invoke-static {v0}, Lcom/google/gdata/data/extensions/When;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/extensions/When;->endTime:Lcom/google/gdata/data/DateTime;

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/google/gdata/data/extensions/When;->startTime:Lcom/google/gdata/data/DateTime;

    iget-object v1, p0, Lcom/google/gdata/data/extensions/When;->endTime:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/DateTime;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "g:when/@startTime must be less than or equal to g:when/@endTime."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/extensions/When;->startTime:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v0}, Lcom/google/gdata/data/DateTime;->isDateOnly()Z

    move-result v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/When;->endTime:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v1}, Lcom/google/gdata/data/DateTime;->isDateOnly()Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 102
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/gdata/data/extensions/When;->startTime:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v0}, Lcom/google/gdata/data/DateTime;->isDateOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Date"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " value expected."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "Date/time"

    goto :goto_0

    .line 107
    :cond_3
    return-void
.end method
