.class final enum Lcom/crittercism/internal/be$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/crittercism/internal/be$a;

.field public static final enum b:Lcom/crittercism/internal/be$a;

.field public static final enum c:Lcom/crittercism/internal/be$a;

.field public static final enum d:Lcom/crittercism/internal/be$a;

.field public static final enum e:Lcom/crittercism/internal/be$a;

.field public static final enum f:Lcom/crittercism/internal/be$a;

.field public static final enum g:Lcom/crittercism/internal/be$a;

.field public static final enum h:Lcom/crittercism/internal/be$a;

.field public static final enum i:Lcom/crittercism/internal/be$a;

.field private static final synthetic j:[Lcom/crittercism/internal/be$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    new-instance v0, Lcom/crittercism/internal/be$a;

    const-string v1, "CREATED"

    invoke-direct {v0, v1, v3}, Lcom/crittercism/internal/be$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crittercism/internal/be$a;->a:Lcom/crittercism/internal/be$a;

    new-instance v0, Lcom/crittercism/internal/be$a;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lcom/crittercism/internal/be$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crittercism/internal/be$a;->b:Lcom/crittercism/internal/be$a;

    new-instance v0, Lcom/crittercism/internal/be$a;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v5}, Lcom/crittercism/internal/be$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crittercism/internal/be$a;->c:Lcom/crittercism/internal/be$a;

    new-instance v0, Lcom/crittercism/internal/be$a;

    const-string v1, "SLOW"

    invoke-direct {v0, v1, v6}, Lcom/crittercism/internal/be$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crittercism/internal/be$a;->d:Lcom/crittercism/internal/be$a;

    .line 50
    new-instance v0, Lcom/crittercism/internal/be$a;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v7}, Lcom/crittercism/internal/be$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crittercism/internal/be$a;->e:Lcom/crittercism/internal/be$a;

    new-instance v0, Lcom/crittercism/internal/be$a;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/be$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crittercism/internal/be$a;->f:Lcom/crittercism/internal/be$a;

    new-instance v0, Lcom/crittercism/internal/be$a;

    const-string v1, "CRASHED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/be$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crittercism/internal/be$a;->g:Lcom/crittercism/internal/be$a;

    new-instance v0, Lcom/crittercism/internal/be$a;

    const-string v1, "CANCELLED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/be$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crittercism/internal/be$a;->h:Lcom/crittercism/internal/be$a;

    new-instance v0, Lcom/crittercism/internal/be$a;

    const-string v1, "INTERRUPTED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/crittercism/internal/be$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/crittercism/internal/be$a;->i:Lcom/crittercism/internal/be$a;

    .line 48
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/crittercism/internal/be$a;

    sget-object v1, Lcom/crittercism/internal/be$a;->a:Lcom/crittercism/internal/be$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/crittercism/internal/be$a;->b:Lcom/crittercism/internal/be$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/crittercism/internal/be$a;->c:Lcom/crittercism/internal/be$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/crittercism/internal/be$a;->d:Lcom/crittercism/internal/be$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/crittercism/internal/be$a;->e:Lcom/crittercism/internal/be$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/crittercism/internal/be$a;->f:Lcom/crittercism/internal/be$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/crittercism/internal/be$a;->g:Lcom/crittercism/internal/be$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/crittercism/internal/be$a;->h:Lcom/crittercism/internal/be$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/crittercism/internal/be$a;->i:Lcom/crittercism/internal/be$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/crittercism/internal/be$a;->j:[Lcom/crittercism/internal/be$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/crittercism/internal/be$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const-class v0, Lcom/crittercism/internal/be$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/crittercism/internal/be$a;

    return-object v0
.end method

.method public static values()[Lcom/crittercism/internal/be$a;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/crittercism/internal/be$a;->j:[Lcom/crittercism/internal/be$a;

    invoke-virtual {v0}, [Lcom/crittercism/internal/be$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/crittercism/internal/be$a;

    return-object v0
.end method
