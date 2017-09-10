.class public final enum Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;
.super Ljava/lang/Enum;
.source "ARCommandsVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arcommands/ARCommandsVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompareResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

.field public static final enum SAME_VERSIONS:Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

.field public static final enum V1_NEWER:Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

.field public static final enum V2_NEWER:Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

    const-string v1, "V1_NEWER"

    invoke-direct {v0, v1, v2}, Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;->V1_NEWER:Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

    .line 62
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

    const-string v1, "SAME_VERSIONS"

    invoke-direct {v0, v1, v3}, Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;->SAME_VERSIONS:Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

    .line 64
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

    const-string v1, "V2_NEWER"

    invoke-direct {v0, v1, v4}, Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;->V2_NEWER:Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;->V1_NEWER:Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;->SAME_VERSIONS:Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;->V2_NEWER:Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;->$VALUES:[Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;->$VALUES:[Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/arcommands/ARCommandsVersion$CompareResult;

    return-object v0
.end method
