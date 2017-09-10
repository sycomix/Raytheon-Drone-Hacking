.class public final Lcom/google/android/gms/internal/zzps;
.super Lcom/google/android/gms/measurement/zze;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/measurement/zze",
        "<",
        "Lcom/google/android/gms/internal/zzps;",
        ">;"
    }
.end annotation


# instance fields
.field public zzDC:I

.field public zzDD:I

.field public zzaUL:I

.field public zzaUM:I

.field public zzaUN:I

.field private zzaaL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/zze;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzps;->zzaaL:Ljava/lang/String;

    return-object v0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/internal/zzps;->zzaaL:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "language"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzps;->zzaaL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenColors"

    iget v2, p0, Lcom/google/android/gms/internal/zzps;->zzaUL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenWidth"

    iget v2, p0, Lcom/google/android/gms/internal/zzps;->zzDC:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenHeight"

    iget v2, p0, Lcom/google/android/gms/internal/zzps;->zzDD:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viewportWidth"

    iget v2, p0, Lcom/google/android/gms/internal/zzps;->zzaUM:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viewportHeight"

    iget v2, p0, Lcom/google/android/gms/internal/zzps;->zzaUN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzps;->zzF(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzAQ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzps;->zzaUL:I

    return v0
.end method

.method public zzAR()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzps;->zzDC:I

    return v0
.end method

.method public zzAS()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzps;->zzDD:I

    return v0
.end method

.method public zzAT()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzps;->zzaUM:I

    return v0
.end method

.method public zzAU()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzps;->zzaUN:I

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzps;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzps;->zzaUL:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzps;->zzaUL:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzps;->zziA(I)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzps;->zzDC:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzps;->zzDC:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzps;->zziB(I)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzps;->zzDD:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzps;->zzDD:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzps;->zziC(I)V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzps;->zzaUM:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/zzps;->zzaUM:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzps;->zziD(I)V

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/zzps;->zzaUN:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/zzps;->zzaUN:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzps;->zziE(I)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzps;->zzaaL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzps;->zzaaL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzps;->setLanguage(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/measurement/zze;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzps;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzps;->zza(Lcom/google/android/gms/internal/zzps;)V

    return-void
.end method

.method public zziA(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzps;->zzaUL:I

    return-void
.end method

.method public zziB(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzps;->zzDC:I

    return-void
.end method

.method public zziC(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzps;->zzDD:I

    return-void
.end method

.method public zziD(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzps;->zzaUM:I

    return-void
.end method

.method public zziE(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzps;->zzaUN:I

    return-void
.end method
