.class public Lcom/google/gdata/data/calendar/SelectedProperty;
.super Lcom/google/gdata/data/ValueConstruct;
.source "SelectedProperty.java"


# static fields
.field public static final FALSE:Lcom/google/gdata/data/calendar/SelectedProperty;

.field public static final TRUE:Lcom/google/gdata/data/calendar/SelectedProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/google/gdata/data/calendar/SelectedProperty;

    const-string v1, "true"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/calendar/SelectedProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/calendar/SelectedProperty;->TRUE:Lcom/google/gdata/data/calendar/SelectedProperty;

    .line 32
    new-instance v0, Lcom/google/gdata/data/calendar/SelectedProperty;

    const-string v1, "false"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/calendar/SelectedProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/calendar/SelectedProperty;->FALSE:Lcom/google/gdata/data/calendar/SelectedProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gdata/data/calendar/SelectedProperty;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v0, Lcom/google/gdata/data/calendar/Namespaces;->gCalNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "selected"

    const-string v2, "value"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 4

    .prologue
    .line 36
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/calendar/SelectedProperty;

    sget-object v2, Lcom/google/gdata/data/calendar/Namespaces;->gCalNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "selected"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    return-object v0
.end method
