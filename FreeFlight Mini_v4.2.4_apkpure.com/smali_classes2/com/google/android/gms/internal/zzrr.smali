.class public Lcom/google/android/gms/internal/zzrr;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzbio:Ljava/lang/String;

.field private final zzbmf:Lcom/google/android/gms/internal/zzrt;

.field zzbmg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object",
            "<",
            "Lcom/google/android/gms/internal/zzrs$zzc;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzbmh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzqW:Lcom/google/android/gms/internal/zzmq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzrt;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzrt;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzmt;->zzsc()Lcom/google/android/gms/internal/zzmq;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzrr;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/internal/zzrt;Lcom/google/android/gms/internal/zzmq;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/internal/zzrt;Lcom/google/android/gms/internal/zzmq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzrt;",
            "Lcom/google/android/gms/internal/zzmq;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrr;->zzbio:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzrr;->zzbmg:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrr;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzrr;->zzqW:Lcom/google/android/gms/internal/zzmq;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzrr;->zzbmf:Lcom/google/android/gms/internal/zzrt;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrr;->zzbmh:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public zzgB(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrr;->zzbio:Ljava/lang/String;

    return-void
.end method
