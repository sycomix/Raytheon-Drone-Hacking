.class public Lcom/google/gdata/util/ErrorDomain$ErrorCode;
.super Ljava/lang/Object;
.source "ErrorDomain.java"

# interfaces
.implements Lcom/google/gdata/util/ErrorContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/util/ErrorDomain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ErrorCode"
.end annotation


# instance fields
.field private final codeName:Ljava/lang/String;

.field private final extendedHelp:Ljava/lang/String;

.field private final internalReason:Ljava/lang/String;

.field private final sendReport:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/gdata/util/ErrorDomain;


# direct methods
.method public constructor <init>(Lcom/google/gdata/util/ErrorDomain;Ljava/lang/String;)V
    .locals 6
    .param p2, "codeName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 124
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/util/ErrorDomain$ErrorCode;-><init>(Lcom/google/gdata/util/ErrorDomain;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method private constructor <init>(Lcom/google/gdata/util/ErrorDomain;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "codeName"    # Ljava/lang/String;
    .param p3, "extendedHelp"    # Ljava/lang/String;
    .param p4, "internalReason"    # Ljava/lang/String;
    .param p5, "sendReport"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->this$0:Lcom/google/gdata/util/ErrorDomain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const-string v0, "codeName"

    invoke-static {p2, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iput-object p2, p0, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->codeName:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->extendedHelp:Ljava/lang/String;

    .line 136
    iput-object p4, p0, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->internalReason:Ljava/lang/String;

    .line 137
    iput-object p5, p0, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->sendReport:Ljava/lang/String;

    .line 138
    return-void
.end method


# virtual methods
.method public getCodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->codeName:Ljava/lang/String;

    return-object v0
.end method

.method public getDebugInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDomainName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->this$0:Lcom/google/gdata/util/ErrorDomain;

    invoke-virtual {v0}, Lcom/google/gdata/util/ErrorDomain;->getDomainName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedHelp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->extendedHelp:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->internalReason:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocationType()Lcom/google/gdata/util/ErrorContent$LocationType;
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSendReport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->sendReport:Ljava/lang/String;

    return-object v0
.end method

.method public setInternalReason(Ljava/lang/String;)Lcom/google/gdata/util/ErrorDomain$ErrorCode;
    .locals 1
    .param p1, "newInternalReason"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->withInternalReason(Ljava/lang/String;)Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method public withExtendedHelp(Ljava/lang/String;)Lcom/google/gdata/util/ErrorDomain$ErrorCode;
    .locals 6
    .param p1, "newExtendedHelp"    # Ljava/lang/String;

    .prologue
    .line 200
    new-instance v0, Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    iget-object v1, p0, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->this$0:Lcom/google/gdata/util/ErrorDomain;

    iget-object v2, p0, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->codeName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->internalReason:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->sendReport:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/util/ErrorDomain$ErrorCode;-><init>(Lcom/google/gdata/util/ErrorDomain;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withInternalReason(Ljava/lang/String;)Lcom/google/gdata/util/ErrorDomain$ErrorCode;
    .locals 6
    .param p1, "newInternalReason"    # Ljava/lang/String;

    .prologue
    .line 179
    new-instance v0, Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    iget-object v1, p0, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->this$0:Lcom/google/gdata/util/ErrorDomain;

    iget-object v2, p0, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->codeName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->extendedHelp:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->sendReport:Ljava/lang/String;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/util/ErrorDomain$ErrorCode;-><init>(Lcom/google/gdata/util/ErrorDomain;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public withSendReport(Ljava/lang/String;)Lcom/google/gdata/util/ErrorDomain$ErrorCode;
    .locals 6
    .param p1, "newSendReport"    # Ljava/lang/String;

    .prologue
    .line 220
    new-instance v0, Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    iget-object v1, p0, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->this$0:Lcom/google/gdata/util/ErrorDomain;

    iget-object v2, p0, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->codeName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->extendedHelp:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/gdata/util/ErrorDomain$ErrorCode;->internalReason:Ljava/lang/String;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/util/ErrorDomain$ErrorCode;-><init>(Lcom/google/gdata/util/ErrorDomain;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
