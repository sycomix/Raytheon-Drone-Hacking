.class public final enum Lcom/google/gdata/client/Service$GDataRequest$RequestType;
.super Ljava/lang/Enum;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/Service$GDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/client/Service$GDataRequest$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/client/Service$GDataRequest$RequestType;

.field public static final enum BATCH:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

.field public static final enum DELETE:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

.field public static final enum INSERT:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

.field public static final enum PATCH:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

.field public static final enum QUERY:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

.field public static final enum UPDATE:Lcom/google/gdata/client/Service$GDataRequest$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 201
    new-instance v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    const-string v1, "QUERY"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/client/Service$GDataRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->QUERY:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    new-instance v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    const-string v1, "INSERT"

    invoke-direct {v0, v1, v4}, Lcom/google/gdata/client/Service$GDataRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->INSERT:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    new-instance v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v5}, Lcom/google/gdata/client/Service$GDataRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->UPDATE:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    new-instance v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    const-string v1, "PATCH"

    invoke-direct {v0, v1, v6}, Lcom/google/gdata/client/Service$GDataRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->PATCH:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    new-instance v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v7}, Lcom/google/gdata/client/Service$GDataRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->DELETE:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    new-instance v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    const-string v1, "BATCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/client/Service$GDataRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->BATCH:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    .line 200
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    sget-object v1, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->QUERY:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->INSERT:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->UPDATE:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->PATCH:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->DELETE:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->BATCH:Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->$VALUES:[Lcom/google/gdata/client/Service$GDataRequest$RequestType;

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
    .line 200
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/client/Service$GDataRequest$RequestType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 200
    const-class v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/client/Service$GDataRequest$RequestType;
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/google/gdata/client/Service$GDataRequest$RequestType;->$VALUES:[Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    invoke-virtual {v0}, [Lcom/google/gdata/client/Service$GDataRequest$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/client/Service$GDataRequest$RequestType;

    return-object v0
.end method
