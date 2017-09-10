.class public Lcom/google/gdata/data/calendar/AccessLevelProperty;
.super Lcom/google/gdata/data/ValueConstruct;
.source "AccessLevelProperty.java"


# static fields
.field public static final EDITOR:Lcom/google/gdata/data/calendar/AccessLevelProperty;

.field public static final FREEBUSY:Lcom/google/gdata/data/calendar/AccessLevelProperty;

.field public static final NONE:Lcom/google/gdata/data/calendar/AccessLevelProperty;

.field public static final OVERRIDE:Lcom/google/gdata/data/calendar/AccessLevelProperty;

.field public static final OWNER:Lcom/google/gdata/data/calendar/AccessLevelProperty;

.field public static final READ:Lcom/google/gdata/data/calendar/AccessLevelProperty;

.field public static final RESPOND:Lcom/google/gdata/data/calendar/AccessLevelProperty;

.field public static final ROOT:Lcom/google/gdata/data/calendar/AccessLevelProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/google/gdata/data/calendar/AccessLevelProperty;

    const-string v1, "none"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/calendar/AccessLevelProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/calendar/AccessLevelProperty;->NONE:Lcom/google/gdata/data/calendar/AccessLevelProperty;

    .line 38
    new-instance v0, Lcom/google/gdata/data/calendar/AccessLevelProperty;

    const-string v1, "read"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/calendar/AccessLevelProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/calendar/AccessLevelProperty;->READ:Lcom/google/gdata/data/calendar/AccessLevelProperty;

    .line 44
    new-instance v0, Lcom/google/gdata/data/calendar/AccessLevelProperty;

    const-string v1, "freebusy"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/calendar/AccessLevelProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/calendar/AccessLevelProperty;->FREEBUSY:Lcom/google/gdata/data/calendar/AccessLevelProperty;

    .line 51
    new-instance v0, Lcom/google/gdata/data/calendar/AccessLevelProperty;

    const-string v1, "respond"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/calendar/AccessLevelProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/calendar/AccessLevelProperty;->RESPOND:Lcom/google/gdata/data/calendar/AccessLevelProperty;

    .line 59
    new-instance v0, Lcom/google/gdata/data/calendar/AccessLevelProperty;

    const-string v1, "override"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/calendar/AccessLevelProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/calendar/AccessLevelProperty;->OVERRIDE:Lcom/google/gdata/data/calendar/AccessLevelProperty;

    .line 67
    new-instance v0, Lcom/google/gdata/data/calendar/AccessLevelProperty;

    const-string v1, "editor"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/calendar/AccessLevelProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/calendar/AccessLevelProperty;->EDITOR:Lcom/google/gdata/data/calendar/AccessLevelProperty;

    .line 73
    new-instance v0, Lcom/google/gdata/data/calendar/AccessLevelProperty;

    const-string v1, "owner"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/calendar/AccessLevelProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/calendar/AccessLevelProperty;->OWNER:Lcom/google/gdata/data/calendar/AccessLevelProperty;

    .line 79
    new-instance v0, Lcom/google/gdata/data/calendar/AccessLevelProperty;

    const-string v1, "root"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/calendar/AccessLevelProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/calendar/AccessLevelProperty;->ROOT:Lcom/google/gdata/data/calendar/AccessLevelProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gdata/data/calendar/AccessLevelProperty;-><init>(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-object v0, Lcom/google/gdata/data/calendar/Namespaces;->gCalNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "accesslevel"

    const-string v2, "value"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 4

    .prologue
    .line 83
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/calendar/AccessLevelProperty;

    sget-object v2, Lcom/google/gdata/data/calendar/Namespaces;->gCalNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "accesslevel"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    return-object v0
.end method
