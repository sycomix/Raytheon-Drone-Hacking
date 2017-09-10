.class public final enum Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;
.super Ljava/lang/Enum;
.source "ResumableHttpFileUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UploadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

.field public static final enum CLIENT_ERROR:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

.field public static final enum COMPLETE:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

.field public static final enum IN_PROGRESS:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

.field public static final enum NOT_STARTED:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

.field public static final enum PAUSED:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    new-instance v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->COMPLETE:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    new-instance v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    const-string v1, "CLIENT_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->CLIENT_ERROR:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    new-instance v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    const-string v1, "IN_PROGRESS"

    invoke-direct {v0, v1, v4}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->IN_PROGRESS:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    new-instance v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v5}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->NOT_STARTED:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    new-instance v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v6}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->PAUSED:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    .line 131
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    sget-object v1, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->COMPLETE:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->CLIENT_ERROR:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->IN_PROGRESS:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->NOT_STARTED:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->PAUSED:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->$VALUES:[Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 131
    const-class v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->$VALUES:[Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    invoke-virtual {v0}, [Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    return-object v0
.end method
