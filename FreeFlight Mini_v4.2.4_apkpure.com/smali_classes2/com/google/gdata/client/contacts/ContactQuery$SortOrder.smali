.class public final enum Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;
.super Ljava/lang/Enum;
.source "ContactQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/contacts/ContactQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

.field public static final enum ASCENDING:Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

.field public static final enum DESCENDING:Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

.field public static final enum NONE:Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    new-instance v0, Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

    const-string v1, "ASCENDING"

    const-string v2, "ascending"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;->ASCENDING:Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

    .line 81
    new-instance v0, Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

    const-string v1, "DESCENDING"

    const-string v2, "descending"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;->DESCENDING:Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

    .line 84
    new-instance v0, Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

    const-string v1, "NONE"

    const-string v2, "none"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;->NONE:Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

    sget-object v1, Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;->ASCENDING:Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;->DESCENDING:Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;->NONE:Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;->$VALUES:[Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput-object p3, p0, Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;->value:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    const-class v0, Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;->$VALUES:[Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

    invoke-virtual {v0}, [Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;

    return-object v0
.end method


# virtual methods
.method public toValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/gdata/client/contacts/ContactQuery$SortOrder;->value:Ljava/lang/String;

    return-object v0
.end method
