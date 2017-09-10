.class public Lcom/google/gdata/util/ErrorElement;
.super Ljava/lang/Object;
.source "ErrorElement.java"

# interfaces
.implements Lcom/google/gdata/util/ErrorContent;


# static fields
.field private static final GOOGLE_URI_PATTERN:Ljava/lang/String; = "http://.*google\\.com/.*"


# instance fields
.field private errorCodeName:Ljava/lang/String;

.field private errorDebugInfo:Ljava/lang/String;

.field private errorDomainName:Ljava/lang/String;

.field private errorExtendedHelp:Ljava/lang/String;

.field private errorInternalReason:Ljava/lang/String;

.field private errorLocation:Ljava/lang/String;

.field private errorLocationType:Lcom/google/gdata/util/ErrorContent$LocationType;

.field private errorSendReport:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/google/gdata/util/ErrorContent;)V
    .locals 1
    .param p1, "source"    # Lcom/google/gdata/util/ErrorContent;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-interface {p1}, Lcom/google/gdata/util/ErrorContent;->getDomainName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/util/ErrorElement;->errorDomainName:Ljava/lang/String;

    .line 48
    invoke-interface {p1}, Lcom/google/gdata/util/ErrorContent;->getCodeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/util/ErrorElement;->errorCodeName:Ljava/lang/String;

    .line 49
    invoke-interface {p1}, Lcom/google/gdata/util/ErrorContent;->getLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/util/ErrorElement;->errorLocation:Ljava/lang/String;

    .line 50
    invoke-interface {p1}, Lcom/google/gdata/util/ErrorContent;->getLocationType()Lcom/google/gdata/util/ErrorContent$LocationType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/util/ErrorElement;->errorLocationType:Lcom/google/gdata/util/ErrorContent$LocationType;

    .line 51
    invoke-interface {p1}, Lcom/google/gdata/util/ErrorContent;->getInternalReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/util/ErrorElement;->errorInternalReason:Ljava/lang/String;

    .line 52
    invoke-interface {p1}, Lcom/google/gdata/util/ErrorContent;->getExtendedHelp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/util/ErrorElement;->errorExtendedHelp:Ljava/lang/String;

    .line 53
    invoke-interface {p1}, Lcom/google/gdata/util/ErrorContent;->getSendReport()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/util/ErrorElement;->errorSendReport:Ljava/lang/String;

    .line 54
    invoke-interface {p1}, Lcom/google/gdata/util/ErrorContent;->getDebugInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/util/ErrorElement;->errorDebugInfo:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public getCodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/gdata/util/ErrorElement;->errorCodeName:Ljava/lang/String;

    return-object v0
.end method

.method public getDebugInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/gdata/util/ErrorElement;->errorDebugInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/gdata/util/ErrorElement;->errorDomainName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendedHelp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/gdata/util/ErrorElement;->errorExtendedHelp:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/gdata/util/ErrorElement;->errorInternalReason:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/gdata/util/ErrorElement;->errorLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationType()Lcom/google/gdata/util/ErrorContent$LocationType;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/gdata/util/ErrorElement;->errorLocationType:Lcom/google/gdata/util/ErrorContent$LocationType;

    return-object v0
.end method

.method public getSendReport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/gdata/util/ErrorElement;->errorSendReport:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)Lcom/google/gdata/util/ErrorElement;
    .locals 1
    .param p1, "codeName"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string v0, "Error code must not be null."

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iput-object p1, p0, Lcom/google/gdata/util/ErrorElement;->errorCodeName:Ljava/lang/String;

    .line 92
    return-object p0
.end method

.method public setDebugInfo(Ljava/lang/String;)Lcom/google/gdata/util/ErrorElement;
    .locals 1
    .param p1, "debugInfo"    # Ljava/lang/String;

    .prologue
    .line 244
    const-string v0, "Debug info must not be null."

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iput-object p1, p0, Lcom/google/gdata/util/ErrorElement;->errorDebugInfo:Ljava/lang/String;

    .line 246
    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)Lcom/google/gdata/util/ErrorElement;
    .locals 1
    .param p1, "domainName"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string v0, "Error domain must not be null."

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Lcom/google/gdata/util/ErrorElement;->errorDomainName:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public setExtendedHelp(Ljava/lang/String;)Lcom/google/gdata/util/ErrorElement;
    .locals 4
    .param p1, "extendedHelp"    # Ljava/lang/String;

    .prologue
    .line 197
    const-string v0, "Extended help uri must not be null."

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v0, "http://.*google\\.com/.*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Invalid extended help URI: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/gdata/util/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iput-object p1, p0, Lcom/google/gdata/util/ErrorElement;->errorExtendedHelp:Ljava/lang/String;

    .line 203
    return-object p0
.end method

.method public setHeaderLocation(Ljava/lang/String;)Lcom/google/gdata/util/ErrorElement;
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 128
    sget-object v0, Lcom/google/gdata/util/ErrorContent$LocationType;->HEADER:Lcom/google/gdata/util/ErrorContent$LocationType;

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/util/ErrorElement;->setLocation(Ljava/lang/String;Lcom/google/gdata/util/ErrorContent$LocationType;)Lcom/google/gdata/util/ErrorElement;

    move-result-object v0

    return-object v0
.end method

.method public setInternalReason(Ljava/lang/String;)Lcom/google/gdata/util/ErrorElement;
    .locals 1
    .param p1, "internalReason"    # Ljava/lang/String;

    .prologue
    .line 170
    const-string v0, "Internal Reason must not be null."

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iput-object p1, p0, Lcom/google/gdata/util/ErrorElement;->errorInternalReason:Ljava/lang/String;

    .line 173
    return-object p0
.end method

.method public setLocation(Ljava/lang/String;)Lcom/google/gdata/util/ErrorElement;
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 138
    sget-object v0, Lcom/google/gdata/util/ErrorContent$LocationType;->OTHER:Lcom/google/gdata/util/ErrorContent$LocationType;

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/util/ErrorElement;->setLocation(Ljava/lang/String;Lcom/google/gdata/util/ErrorContent$LocationType;)Lcom/google/gdata/util/ErrorElement;

    move-result-object v0

    return-object v0
.end method

.method public setLocation(Ljava/lang/String;Lcom/google/gdata/util/ErrorContent$LocationType;)Lcom/google/gdata/util/ErrorElement;
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "locationType"    # Lcom/google/gdata/util/ErrorContent$LocationType;

    .prologue
    .line 148
    const-string v0, "Location must not be null."

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v0, "Location type must not be null."

    invoke-static {p2, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iput-object p1, p0, Lcom/google/gdata/util/ErrorElement;->errorLocation:Ljava/lang/String;

    .line 151
    iput-object p2, p0, Lcom/google/gdata/util/ErrorElement;->errorLocationType:Lcom/google/gdata/util/ErrorContent$LocationType;

    .line 152
    return-object p0
.end method

.method public setSendReport(Ljava/lang/String;)Lcom/google/gdata/util/ErrorElement;
    .locals 4
    .param p1, "sendReport"    # Ljava/lang/String;

    .prologue
    .line 223
    const-string v0, "Send report uri must not be null."

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v0, "http://.*google\\.com/.*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Invalid send report URI: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/gdata/util/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iput-object p1, p0, Lcom/google/gdata/util/ErrorElement;->errorSendReport:Ljava/lang/String;

    .line 228
    return-object p0
.end method

.method public setXpathLocation(Ljava/lang/String;)Lcom/google/gdata/util/ErrorElement;
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 119
    sget-object v0, Lcom/google/gdata/util/ErrorContent$LocationType;->XPATH:Lcom/google/gdata/util/ErrorContent$LocationType;

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/util/ErrorElement;->setLocation(Ljava/lang/String;Lcom/google/gdata/util/ErrorContent$LocationType;)Lcom/google/gdata/util/ErrorElement;

    move-result-object v0

    return-object v0
.end method
