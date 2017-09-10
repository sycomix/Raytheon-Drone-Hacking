.class public Lcom/google/gdata/data/analytics/Destination;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Destination.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "destination"
    nsAlias = "ga"
    nsUri = "http://schemas.google.com/ga/2009"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/analytics/Destination$MatchType;
    }
.end annotation


# static fields
.field private static final CASESENSITIVE:Ljava/lang/String; = "caseSensitive"

.field private static final EXPRESSION:Ljava/lang/String; = "expression"

.field private static final MATCHTYPE:Ljava/lang/String; = "matchType"

.field private static final STEP1REQUIRED:Ljava/lang/String; = "step1Required"

.field static final XML_NAME:Ljava/lang/String; = "destination"


# instance fields
.field private caseSensitive:Ljava/lang/Boolean;

.field private expression:Ljava/lang/String;

.field private matchType:Ljava/lang/String;

.field private step1Required:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Destination;->caseSensitive:Ljava/lang/Boolean;

    .line 58
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Destination;->expression:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Destination;->matchType:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Destination;->step1Required:Ljava/lang/Boolean;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "caseSensitive"    # Ljava/lang/Boolean;
    .param p2, "expression"    # Ljava/lang/String;
    .param p3, "matchType"    # Ljava/lang/String;
    .param p4, "step1Required"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Destination;->caseSensitive:Ljava/lang/Boolean;

    .line 58
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Destination;->expression:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Destination;->matchType:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/google/gdata/data/analytics/Destination;->step1Required:Ljava/lang/Boolean;

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/Destination;->setCaseSensitive(Ljava/lang/Boolean;)V

    .line 99
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/analytics/Destination;->setExpression(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/analytics/Destination;->setMatchType(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p4}, Lcom/google/gdata/data/analytics/Destination;->setStep1Required(Ljava/lang/Boolean;)V

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/Destination;->setImmutable(Z)V

    .line 103
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 282
    const-class v1, Lcom/google/gdata/data/analytics/Destination;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 284
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 285
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 286
    return-object v0
.end method


# virtual methods
.method public addStep(Lcom/google/gdata/data/analytics/Step;)V
    .locals 1
    .param p1, "step"    # Lcom/google/gdata/data/analytics/Step;

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Destination;->getSteps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    return-void
.end method

.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 2
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 300
    const-string v0, "caseSensitive"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/Destination;->caseSensitive:Ljava/lang/Boolean;

    .line 301
    const-string v0, "expression"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/Destination;->expression:Ljava/lang/String;

    .line 302
    const-string v0, "matchType"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/Destination;->matchType:Ljava/lang/String;

    .line 303
    const-string v0, "step1Required"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/Destination;->step1Required:Ljava/lang/Boolean;

    .line 304
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 107
    const-class v0, Lcom/google/gdata/data/analytics/Destination;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    const-class v0, Lcom/google/gdata/data/analytics/Destination;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/gdata/data/analytics/Step;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    goto :goto_0
.end method

.method public getCaseSensitive()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Destination;->caseSensitive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getExpression()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Destination;->expression:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Destination;->matchType:Ljava/lang/String;

    return-object v0
.end method

.method public getStep1Required()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Destination;->step1Required:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSteps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/analytics/Step;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    const-class v0, Lcom/google/gdata/data/analytics/Step;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/Destination;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCaseSensitive()Z
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Destination;->getCaseSensitive()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExpression()Z
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Destination;->getExpression()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMatchType()Z
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Destination;->getMatchType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStep1Required()Z
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Destination;->getStep1Required()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSteps()Z
    .locals 1

    .prologue
    .line 253
    const-class v0, Lcom/google/gdata/data/analytics/Step;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/Destination;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 291
    const-string v0, "caseSensitive"

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Destination;->caseSensitive:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    const-string v0, "expression"

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Destination;->expression:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v0, "matchType"

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Destination;->matchType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v0, "step1Required"

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Destination;->step1Required:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    return-void
.end method

.method public setCaseSensitive(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "caseSensitive"    # Ljava/lang/Boolean;

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Destination;->throwExceptionIfImmutable()V

    .line 131
    iput-object p1, p0, Lcom/google/gdata/data/analytics/Destination;->caseSensitive:Ljava/lang/Boolean;

    .line 132
    return-void
.end method

.method public setExpression(Ljava/lang/String;)V
    .locals 0
    .param p1, "expression"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Destination;->throwExceptionIfImmutable()V

    .line 159
    iput-object p1, p0, Lcom/google/gdata/data/analytics/Destination;->expression:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setMatchType(Ljava/lang/String;)V
    .locals 0
    .param p1, "matchType"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Destination;->throwExceptionIfImmutable()V

    .line 188
    iput-object p1, p0, Lcom/google/gdata/data/analytics/Destination;->matchType:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setStep1Required(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "step1Required"    # Ljava/lang/Boolean;

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/Destination;->throwExceptionIfImmutable()V

    .line 217
    iput-object p1, p0, Lcom/google/gdata/data/analytics/Destination;->step1Required:Ljava/lang/Boolean;

    .line 218
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Destination caseSensitive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Destination;->caseSensitive:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " expression="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Destination;->expression:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " matchType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Destination;->matchType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " step1Required="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/analytics/Destination;->step1Required:Ljava/lang/Boolean;

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
    .line 258
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Destination;->caseSensitive:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 259
    const-string v0, "caseSensitive"

    invoke-static {v0}, Lcom/google/gdata/data/analytics/Destination;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Destination;->expression:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 262
    const-string v0, "expression"

    invoke-static {v0}, Lcom/google/gdata/data/analytics/Destination;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Destination;->matchType:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 265
    const-string v0, "matchType"

    invoke-static {v0}, Lcom/google/gdata/data/analytics/Destination;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/data/analytics/Destination;->step1Required:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 268
    const-string v0, "step1Required"

    invoke-static {v0}, Lcom/google/gdata/data/analytics/Destination;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 270
    :cond_3
    return-void
.end method
