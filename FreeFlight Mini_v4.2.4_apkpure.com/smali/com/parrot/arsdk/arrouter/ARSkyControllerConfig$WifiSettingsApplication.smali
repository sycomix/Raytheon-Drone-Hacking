.class public final enum Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;
.super Ljava/lang/Enum;
.source "ARSkyControllerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WifiSettingsApplication"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

.field public static final enum CANCEL:Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

.field public static final enum DELAYED:Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

.field public static final enum NONE:Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

.field public static final enum NOW:Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 167
    new-instance v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    const-string v1, "NOW"

    invoke-direct {v0, v1, v2}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->NOW:Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    .line 168
    new-instance v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    const-string v1, "DELAYED"

    invoke-direct {v0, v1, v3}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->DELAYED:Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    .line 169
    new-instance v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->NONE:Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    .line 170
    new-instance v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v5}, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->CANCEL:Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    .line 166
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    sget-object v1, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->NOW:Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->DELAYED:Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->NONE:Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->CANCEL:Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    aput-object v1, v0, v5

    sput-object v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->$VALUES:[Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

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
    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 166
    const-class v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    return-object v0
.end method

.method public static values()[Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->$VALUES:[Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    invoke-virtual {v0}, [Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parrot/arsdk/arrouter/ARSkyControllerConfig$WifiSettingsApplication;

    return-object v0
.end method
