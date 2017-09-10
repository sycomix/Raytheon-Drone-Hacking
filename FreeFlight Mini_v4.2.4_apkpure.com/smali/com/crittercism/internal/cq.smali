.class public final enum Lcom/crittercism/internal/cq;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/crittercism/internal/cq;

.field public static final enum b:Lcom/crittercism/internal/cq;

.field public static final enum c:Lcom/crittercism/internal/cq;

.field public static final enum d:Lcom/crittercism/internal/cq;

.field public static final enum e:Lcom/crittercism/internal/cq;

.field public static final enum f:Lcom/crittercism/internal/cq;

.field public static final enum g:Lcom/crittercism/internal/cq;

.field public static final enum h:Lcom/crittercism/internal/cq;

.field public static final enum i:Lcom/crittercism/internal/cq;

.field public static final enum j:Lcom/crittercism/internal/cq;

.field public static final enum k:Lcom/crittercism/internal/cq;

.field public static final enum l:Lcom/crittercism/internal/cq;

.field private static final synthetic o:[Lcom/crittercism/internal/cq;


# instance fields
.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4
    new-instance v0, Lcom/crittercism/internal/cq;

    const-string v1, "APP_LOADS_FILES"

    const-string v2, "com.crittercism.apploads"

    const-string v3, "appLoadFiles"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/crittercism/internal/cq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/crittercism/internal/cq;->a:Lcom/crittercism/internal/cq;

    .line 5
    new-instance v0, Lcom/crittercism/internal/cq;

    const-string v1, "HANDLED_EXCEPTION_FILES"

    const-string v2, "com.crittercism.exceptions"

    const-string v3, "handledExceptionFiles"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/crittercism/internal/cq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/crittercism/internal/cq;->b:Lcom/crittercism/internal/cq;

    .line 6
    new-instance v0, Lcom/crittercism/internal/cq;

    const-string v1, "SDK_CRASHES_FILES"

    const-string v2, "com.crittercism.sdkcrashes"

    const-string v3, "sdkCrashFiles"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/crittercism/internal/cq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/crittercism/internal/cq;->c:Lcom/crittercism/internal/cq;

    .line 7
    new-instance v0, Lcom/crittercism/internal/cq;

    const-string v1, "NDK_CRASHES_FILES"

    const-string v2, "com.crittercism.ndkcrashes"

    const-string v3, "ndkCrashFiles"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/crittercism/internal/cq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/crittercism/internal/cq;->d:Lcom/crittercism/internal/cq;

    .line 8
    new-instance v0, Lcom/crittercism/internal/cq;

    const-string v1, "CURRENT_BREADCRUMBS_FILES"

    const-string v2, "com.crittercism.breadcrumbs"

    const-string v3, "currentBreadcrumbFiles"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/crittercism/internal/cq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/crittercism/internal/cq;->e:Lcom/crittercism/internal/cq;

    .line 9
    new-instance v0, Lcom/crittercism/internal/cq;

    const-string v1, "PREVIOUS_BREADCRUMBS_FILES"

    const/4 v2, 0x5

    const-string v3, "com.crittercism.breadcrumbs"

    const-string v4, "previousBreadcrumbFiles"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/crittercism/internal/cq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/crittercism/internal/cq;->f:Lcom/crittercism/internal/cq;

    .line 10
    new-instance v0, Lcom/crittercism/internal/cq;

    const-string v1, "NETWORK_BREADCRUMBS_FILES"

    const/4 v2, 0x6

    const-string v3, "com.crittercism.breadcrumbs"

    const-string v4, "networkBreadcrumbFiles"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/crittercism/internal/cq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/crittercism/internal/cq;->g:Lcom/crittercism/internal/cq;

    .line 11
    new-instance v0, Lcom/crittercism/internal/cq;

    const-string v1, "CRASHED_ON_LAST_LOAD_SETTING"

    const/4 v2, 0x7

    const-string v3, "com.crittercism.usersettings"

    const-string v4, "crashedOnLastLoad"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/crittercism/internal/cq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/crittercism/internal/cq;->h:Lcom/crittercism/internal/cq;

    .line 12
    new-instance v0, Lcom/crittercism/internal/cq;

    const-string v1, "OPT_OUT_STATUS_SETTING"

    const/16 v2, 0x8

    const-string v3, "com.crittercism.usersettings"

    const-string v4, "optOutStatusSettings"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/crittercism/internal/cq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/crittercism/internal/cq;->i:Lcom/crittercism/internal/cq;

    .line 13
    new-instance v0, Lcom/crittercism/internal/cq;

    const-string v1, "SESSION_ID_SETTING"

    const/16 v2, 0x9

    const-string v3, "com.crittercism.usersettings"

    const-string v4, "sessionIDSetting"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/crittercism/internal/cq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/crittercism/internal/cq;->j:Lcom/crittercism/internal/cq;

    .line 14
    new-instance v0, Lcom/crittercism/internal/cq;

    const-string v1, "OLD_SESSION_ID_SETTING"

    const/16 v2, 0xa

    const-string v3, "com.crittercism.prefs"

    const-string v4, "com.crittercism.prefs.sessid"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/crittercism/internal/cq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/crittercism/internal/cq;->k:Lcom/crittercism/internal/cq;

    .line 15
    new-instance v0, Lcom/crittercism/internal/cq;

    const-string v1, "OLD_OPT_OUT_STATUS_SETTING"

    const/16 v2, 0xb

    const-string v3, "com.crittercism.prefs"

    const-string v4, "optOutStatus"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/crittercism/internal/cq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/crittercism/internal/cq;->l:Lcom/crittercism/internal/cq;

    .line 3
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/crittercism/internal/cq;

    sget-object v1, Lcom/crittercism/internal/cq;->a:Lcom/crittercism/internal/cq;

    aput-object v1, v0, v5

    sget-object v1, Lcom/crittercism/internal/cq;->b:Lcom/crittercism/internal/cq;

    aput-object v1, v0, v6

    sget-object v1, Lcom/crittercism/internal/cq;->c:Lcom/crittercism/internal/cq;

    aput-object v1, v0, v7

    sget-object v1, Lcom/crittercism/internal/cq;->d:Lcom/crittercism/internal/cq;

    aput-object v1, v0, v8

    sget-object v1, Lcom/crittercism/internal/cq;->e:Lcom/crittercism/internal/cq;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/crittercism/internal/cq;->f:Lcom/crittercism/internal/cq;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/crittercism/internal/cq;->g:Lcom/crittercism/internal/cq;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/crittercism/internal/cq;->h:Lcom/crittercism/internal/cq;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/crittercism/internal/cq;->i:Lcom/crittercism/internal/cq;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/crittercism/internal/cq;->j:Lcom/crittercism/internal/cq;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/crittercism/internal/cq;->k:Lcom/crittercism/internal/cq;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/crittercism/internal/cq;->l:Lcom/crittercism/internal/cq;

    aput-object v2, v0, v1

    sput-object v0, Lcom/crittercism/internal/cq;->o:[Lcom/crittercism/internal/cq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/crittercism/internal/cq;->m:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/crittercism/internal/cq;->n:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/crittercism/internal/cq;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/crittercism/internal/cq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/cq;

    return-object v0
.end method

.method public static values()[Lcom/crittercism/internal/cq;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/crittercism/internal/cq;->o:[Lcom/crittercism/internal/cq;

    invoke-virtual {v0}, [Lcom/crittercism/internal/cq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/crittercism/internal/cq;

    return-object v0
.end method
