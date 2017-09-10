.class public final enum Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;
.super Ljava/lang/Enum;
.source "HealthNamespace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/health/HealthNamespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CategoryScheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;

.field public static final enum ccr:Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;

.field public static final enum code:Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;

.field public static final enum item:Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;


# instance fields
.field private final iri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    new-instance v0, Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;

    const-string v1, "ccr"

    const-string v2, "http://schemas.google.com/health/ccr"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;->ccr:Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;

    .line 116
    new-instance v0, Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;

    const-string v1, "item"

    const-string v2, "http://schemas.google.com/health/item"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;->item:Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;

    .line 122
    new-instance v0, Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;

    const-string v1, "code"

    const-string v2, "http://schemas.google.com/health/code"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;->code:Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;

    sget-object v1, Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;->ccr:Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;->item:Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;->code:Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;->$VALUES:[Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "iri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 125
    iput-object p3, p0, Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;->iri:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    const-class v0, Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;->$VALUES:[Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;

    invoke-virtual {v0}, [Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;

    return-object v0
.end method


# virtual methods
.method public getIri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/gdata/data/health/HealthNamespace$CategoryScheme;->iri:Ljava/lang/String;

    return-object v0
.end method
