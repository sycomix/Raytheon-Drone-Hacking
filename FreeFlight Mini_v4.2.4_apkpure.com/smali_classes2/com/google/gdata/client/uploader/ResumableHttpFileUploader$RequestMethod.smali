.class public final enum Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;
.super Ljava/lang/Enum;
.source "ResumableHttpFileUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

.field public static final enum POST:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

.field public static final enum PUT:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    new-instance v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    const-string v1, "POST"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;->POST:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    new-instance v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;->PUT:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    .line 138
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    sget-object v1, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;->POST:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;->PUT:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;->$VALUES:[Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

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
    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 138
    const-class v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;->$VALUES:[Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    invoke-virtual {v0}, [Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    return-object v0
.end method
